<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attend Test</title>
<script type="text/javascript" src="./jquery.js"></script>
<script type="text/javascript">

function getCompany(){
	
	var xmlreq = new XMLHttpRequest;
	xmlreq.open("post","./GetQuestions?action=retrievecompany", true);
	xmlreq.send();
	xmlreq.onreadystatechange=function()
	{
		var combo=document.getElementById("company");
	    if(xmlreq.readyState==4 && xmlreq.status==200)
	   {
		var jsondata=eval("("+xmlreq.responseText+")");
		var temp=jsondata.company;
		var count=temp.length;
		var option='';
		option=document.createElement("option");
		option.text="Select";
		option.value='0';
		combo.add(option);
		for(i=0;i<count;i++)
		{
			option=document.createElement("option");
			
			option.text=temp[i].comname+'';
			
			option.value=temp[i].comid;
		
			combo.add(option);
		}
		      
	    }	
	 }
}
//getting test names
function retreiveTest(){

	var c = document.getElementById("company").value;

	var xmlreq = new XMLHttpRequest;
	xmlreq.open("post","./GetQuestion?action=retrievetest&cid="+c+"", true);
	xmlreq.send();
	xmlreq.onreadystatechange=function()
	{
		var combo=document.getElementById("test");
	    if(xmlreq.readyState==4 && xmlreq.status==200)
	   {
	 	   
		var jsondata=eval("("+xmlreq.responseText+")");
		var temp=jsondata.test;
		var count=temp.length;
		var option='';
		option=document.createElement("option");
		option.text="Select";
		option.value='0';
		combo.add(option);
		for(i=0;i<count;i++)
		{
			option=document.createElement("option");
			
			option.text=temp[i].testname+'';
			
			option.value=temp[i].testid;
		
			combo.add(option);
		}
		      
	    }	
	 }
}
var ques  = new array();

function retreivequestions()
{
	sessionStorage.j=0;
	sessionStorage.total=0;
		alert("Sess:::"+sessionStorage.j)
		var c = document.getElementById("test").value;
		var xmlreq = new XMLHttpRequest;
		xmlreq.open("post","./GetQuestions?action=retrievequestions&testid="+c+"", true);
		xmlreq.send();
		xmlreq.onreadystatechange=function()
		{
		    if(xmlreq.readyState==4 && xmlreq.status==200)
		   {
		 	var response = eval("("+xmlreq.responseText+")");
		 	var q = response.question;
		 	ques = q;
		 	alert("questions::"+ques.length);
		 	count();
			
		   }	
		}
}
//

function count()
{	alert("j="+sessionStorage.j);
	var i=sessionStorage.j;
	var d = document.getElementById("q");
	d.innerHTML ="";

	var l =document.createElement("label");
	l.innerHTML = ques[i].qname;
	d.appendChild(l);

	var l1 =document.createElement("br");
	d.appendChild(l1);

	alert("questions"+ques[i].c1);
	
	var c1 = document.createElement("input");
	c1.setAttribute("type","radio");
	c1.setAttribute("id","ua");
	c1.setAttribute("name","a");
	c1.setAttribute("value",ques[i].c1);
	d.appendChild(c1);

	var lc1 =document.createElement("label");
	lc1.innerHTML = ques[i].c1;
	d.appendChild(lc1);

	var br =document.createElement("br");
	d.appendChild(br);

	var c2 = document.createElement("input");
	c2.setAttribute("type","radio");
	c2.setAttribute("id","ua");
	c2.setAttribute("name","a");
	c2.setAttribute("value",ques[i].c2);
	d.appendChild(c2);

	var lc2 =document.createElement("label");
	lc2.innerHTML = ques[i].c2;
	d.appendChild(lc2);

	var br =document.createElement("br");
	d.appendChild(br);

	var c3 = document.createElement("input");
	c3.setAttribute("id","ua");
	c3.setAttribute("name","a");
	c3.setAttribute("type","radio");
	c3.setAttribute("value",ques[i].c3);
	d.appendChild(c3);

	var lc3 =document.createElement("label");
	lc3.innerHTML = ques[i].c3;
	d.appendChild(lc3);

	var br =document.createElement("br");
	d.appendChild(br);

	var c4 = document.createElement("input");
	c4.setAttribute("id","ua");
	c4.setAttribute("name","a");
	c4.setAttribute("type","radio");
	c4.setAttribute("value",ques[i].c4);
	d.appendChild(c4);

	var lc4 =document.createElement("label");
	lc4.innerHTML = ques[i].c4;
	d.appendChild(lc4);

	var br =document.createElement("br");
	d.appendChild(br);
	
	var b = document.createElement("input");
	b.setAttribute("type","button");
	b.setAttribute("value", "Next Question");
	b.onclick = function()
	{
		alert("i value::"+i+":::q length::"+(ques.length-1));
		checkanswer();
		if(i==(ques.length-1))
		{
			alert("test completed");
			var t=document.getElementById("test").value;
			alert("test::"+t);
			window.location="Results?test_id="+t+"&marks="+sessionStorage.total;
		}
		count();
	}
	d.appendChild(b);
	
}


function checkanswer()
{
	var t=sessionStorage.total;
	var i=sessionStorage.j;
	alert('total:::'+t);
	//var s;
	//var f = j-1;
	var ans = $("input[type='radio'][name='a']:checked").val();
	//alert("userans::::::"+ans);
	var aans = ques[i].cans;
	//alert("actual ans is:::"+aans);

	if(ans==aans)
	{
		t = Number(t)+1;
		//alert(t);
	}
	i = Number(i)+1;
	sessionStorage.total=t;
	sessionStorage.j=i;
	alert("t is:"+t+":ses total is:::"+sessionStorage.total+"::ses j is:"+sessionStorage.j+"::i is:"+i);
}

</script>
</head>
<body onload="getCompany()">
<style>
html{
background:url('./images/view test.gif ');" no-repeat center fixed;
-webkit-background-size:;
-moz-background-size:cover;
-o-background-size:cover;
background-size:cover;
}
</style>

<h1><font color="#ff0000">view Test </font></h1>
 Select company:<select id="company" name="company" onchange="retreiveTest()"></select><br></br>
 Select test name:<select id="test" name="test"></select><br></br>
 <input type="button" value="submit" onclick="retreivequestions()">
 <br></br>
 <div id="q"></div>
</body>
</html>