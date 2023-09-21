package code;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gvjava.org.json.JSONArray;
import gvjava.org.json.JSONObject;



/**
 * Servlet implementation class GetQuestions
 */
@WebServlet("/GetQuestions")
public class GetQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetQuestions() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
String actionvar = request.getParameter("action");
		
if("retrievecompany".equalsIgnoreCase(actionvar))
	retrieveCompany(request, response);

if("retrievetest".equalsIgnoreCase(actionvar))
	retrieveTest(request, response);


if("retrievequestions".equalsIgnoreCase(actionvar))
	retrieveQuestions(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
		
	
protected void retrieveCompany(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		
		PrintWriter out=response.getWriter();
		
		try 
		{
			con=connection.myconnection();
			st=con.createStatement();
			String query="select * from facultyquestions";
			rs=st.executeQuery(query);
			
			JSONObject ob1=new JSONObject();
			JSONArray arr=new JSONArray();
			
			while (rs.next())
			{	
				JSONObject ob=new JSONObject();
				ob.put("subject", rs.getString(2));
				ob.put("count", rs.getString(1));
				arr.put(ob);
			}
			ob1.put("subject", arr);
			
			out.println(ob1);
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}
	
	
protected void retrieveTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	 String topi=request.getParameter("topic");
		
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		
		PrintWriter out=response.getWriter();
		
		try 
		{
			con=connection.myconnection();
			st=con.createStatement();
			String query="select * from facultyquestions";
			System.out.println("query gopi is:::"+query);
			rs=st.executeQuery(query);
			
			JSONObject ob1=new JSONObject();
			JSONArray arr=new JSONArray();
			
			while (rs.next())
			{	
				JSONObject ob=new JSONObject();
				ob.put("topic", rs.getString(3));
				
				arr.put(ob);
			}
			ob1.put("test", arr);
			
			out.println(ob1);
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

	
	protected void retrieveQuestions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		   String topi=request.getParameter("topic");
			
			Connection con=null;
			Statement st=null;
			ResultSet rs=null;
			
			PrintWriter out=response.getWriter();
			
			try 
			{
				con=connection.myconnection();
				st=con.createStatement();
				String query="select * from facultyquestions where topic='"+topi+"'";
				System.out.println("query veera is:::"+query);
				rs=st.executeQuery(query);
				
				JSONObject ob1=new JSONObject();
				JSONArray arr=new JSONArray();
				
				while (rs.next())
				{	
					JSONObject ob=new JSONObject();
					ob.put("qname", rs.getString(4));
					ob.put("cans", rs.getString(5));
					ob.put("c1", rs.getString(6));
					ob.put("c2", rs.getString(7));
					ob.put("c3", rs.getString(8));
					ob.put("c4", rs.getString(9));
					
					arr.put(ob);
				}
				ob1.put("question", arr);
				
				out.println(ob1);
				
			}
			catch (Exception e) 
			{
				e.printStackTrace();
			}
			finally
			{
				if(con!=null)
				{
					try{
						con.close();
					}
					catch(Exception ignored)
					{
						//ignore
					}
					
				}
			}
		}
		
		
			
			
		}



