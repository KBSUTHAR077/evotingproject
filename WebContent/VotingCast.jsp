<%@page import="com.pojo.Party"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BlManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
BlManager b1=new BlManager();
List<Party> d=b1.searchlist();
session.setAttribute("List", d);

%>

<html lang="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Halice</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<style>
div.background {
  background: url('images/demo/backgrounds/22.jpg') repeat;
  border: 2px solid black;
}

div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid blue;
  opacity: 0.6;

  filter: alpha(opacity=60; ); /* For IE8 and earlier */
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: #008080;
}
div.transbox select {
  margin: 5%;
  font-weight: bold;
  color: #4682b4;
}

</style>

<script language="javascript" type="text/javascript">  

      var xmlHttp  
      var xmlHttp
      function showState(str){

      if (typeof XMLHttpRequest != "undefined"){

      xmlHttp= new XMLHttpRequest();

      }
      else if (window.ActiveXObject){

      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");

      }
      if (xmlHttp==null){

      alert("Browser does not support XMLHTTP Request")

      return;
      } 

      var url="Candidate.jsp";

      url +="?count=" +str;

      xmlHttp.onreadystatechange = stateChange;

      xmlHttp.open("GET", url, true);

      xmlHttp.send(null);

      }

      function stateChange(){   

      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   

      document.getElementById("state").innerHTML=xmlHttp.responseText   

      }   
      }

      function showCity(str){

      if (typeof XMLHttpRequest != "undefined"){

        xmlHttp= new XMLHttpRequest();

        }
      else if (window.ActiveXObject){

        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");

        }
      if (xmlHttp==null){

      alert("Browser does not support XMLHTTP Request")

      return;
      } 

      var url="city.jsp";

      url +="?count=" +str;

      xmlHttp.onreadystatechange = stateChange1;

      xmlHttp.open("GET", url, true);

      xmlHttp.send(null);

      }
      function stateChange1(){   

      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   

      document.getElementById("city").innerHTML=xmlHttp.responseText   

      }   
      }
      </script>  

<script type="text/javascript">

var states = new Array();

states['India'] = new Array('Maharashtra','Uttar Pradesh');
states['Other'] = new Array('Other1','Other2');




var cities = new Array();

cities['India'] = new Array();
cities['India']['Maharashtra']          = new Array('Mumbai','Pune','Nagpur','Nashik');
cities['India']['Uttar Pradesh'] = new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');


cities['Other'] = new Array();
cities['Other']['Other1'] = new Array('other11','other12');
cities['Other']['Other2']       = new Array('other21','other22');


var Party = new Array();
Party['BJP'] = new Array('CANDIDATE1','CANDIDATE2','CANDIDATE3','CANDIDATE4','CANDIDATE5','CANDIDATE6');

Party['BSP'] = new Array('BSP1','BSP2','BSP3','BSP4')
Party['NCP'] = new Array('NCP1','NCP2','NCP3','NCP4')
Party['ICP'] = new Array('ICP1','ICP2','ICP3','ICP4')
Party['CMP'] = new Array('CPM','CPM2','CPM3','CPM4')

var Candidate = new Array();

Candidate['BJP'] = new Array();
Candidate['BJP']['CANDIDATE1']          = new Array('ID1','ID2','ID3','ID4','ID5','ID6');
Candidate['BJP']['CANDIDATE2'] = new Array('ID1','ID2','ID3','ID4','ID5','ID6');


Candidate['BSP'] = new Array();
Candidate['BSP']['BSP1'] = new Array('BSPID1');
Candidate['BSP']['BSP2']       = new Array('BSP2ID1bhagwanpur')


function setPARTYp() {
	  partySel = document.getElementById('partyc');
	  partyList = Party[partySel.value];
	  changeSelect('canp', partyList, partyList);
	  setCANDIDATEp();
	}

	function setCANDIDATEp() {
		partySel = document.getElementById('partyc');
	 party1Sel = document.getElementById('canp');
	  canList = Candidate[partySel.value][party1Sel.value];
	  changeSelect('canpid', canList, canList);
	  setStates();
	}


function setStates() {
  cntrySel = document.getElementById('canNomiAreaCountry');
  stateList = states[cntrySel.value];
  changeSelect('canNomiAreaState', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('canNomiAreaCountry');
  stateSel = document.getElementById('canNomiAreaState');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('canNomiAreaCity', cityList, cityList);
}

function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}

// Multiple onload function created by: Simon Willison
// http://simonwillison.net/2004/May/26/addLoadEvent/
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
	setPARTYp();
  setStates();
});

</script>


var msg = " <% String message = (String)request.getAttribute("alertMsg");%>";
alert(msg);
<!--
var states = new Array();
states['Uttar Pradesh'] = new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');

states['Maharashtra'] = new Array('Mumbai','Pune','Nagpur','Nashik')




var cities = new Array();

cities['Maharashtra'] = new Array();
cities['Maharashtra']['Mumbai']          = new Array('Mumbai','Pune','Nagpur','Nashik');
cities['Maharashtra']['Pune'] = new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');


cities['Uttar Pradesh'] = new Array();
cities['Uttar Pradesh']['Kanpur'] = new Array('kanpur1','kanpur2');
cities['Uttar Pradesh']['Varanasi']       = new Array('Amara khaira','bhagwanpur','kandwa');


var towns =new Array();
cities['Uttar Pradesh'] ['Varanasi'] ['bhagwanpur'] = new Array('232101','234342','123212');
	// new Array('Amara khaira','bhagwanpur','kandwa');
 
//cities['India']['Uttar Pradesh'] ['Varanasi']=new Array('232101','234342','123212');-->


<!--
var states = new Array();
states['Uttar Pradesh'] = new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');

states['Maharashtra'] = new Array('Mumbai','Pune','Nagpur','Nashik')




var cities = new Array();

cities['Maharashtra'] = new Array();
cities['Maharashtra']['Mumbai']          = new Array('Mumbai1','Mumbai2','Mumbai3','Mumbai4');
cities['Maharashtra']['Pune'] = new Array('Pune1','Pune2','Pune3','Pune4','Varanasi','Allahabad');


cities['Uttar Pradesh'] = new Array();
cities['Uttar Pradesh']['Kanpur'] = new Array('Afjalpur','Aima','Aiti','Akhari','Amauli','Amlipur','Arajimajhawan','Atawa','Babi Chingi');
cities['Uttar Pradesh']['Varanasi']       = new Array('Amara Khaira Chak','Baragaon','Benipur','bhagwanpur','Bhogabir','Birbhanpur','Dindaspur','Gangapur','Harpal Pur','Kabir Chaura','Kakarmatta','Kotwa','kandwa','Lerhupur','Lohta','Maruadih','Phulwaria','Ramnagar','Salarpur','Shivdaspur','Sigra','Sir Gobardhan','Suzabad','Umarha','Varanasi','Varanasi cantonment')
cities['Uttar Pradesh']['Lucknow']       = new Array('','','','','','','','','','','','','','','','')
var Party = new Array();
Party['BJP'] = new Array('CANDIDATE1','CANDIDATE2','CANDIDATE3','CANDIDATE4','CANDIDATE5','CANDIDATE6');

Party['BSP'] = new Array('BSP1','BSP2','BSP3','BSP4')
Party['NCP'] = new Array('NCP1','NCP2','NCP3','NCP4')
Party['ICP'] = new Array('ICP1','ICP2','ICP3','ICP4')
Party['CMP'] = new Array('CPM','CPM2','CPM3','CPM4')

var Candidate = new Array();

Candidate['BJP'] = new Array();
Candidate['BJP']['CANDIDATE1']          = new Array('ID1','ID2','ID3','ID4','ID5','ID6');
Candidate['BJP']['CANDIDATE2'] = new Array('ID1','ID2','ID3','ID4','ID5','ID6');


Candidate['BSP'] = new Array();
Candidate['BSP']['BSP1'] = new Array('BSPID1');
Candidate['BSP']['BSP2']       = new Array('BSP2ID1bhagwanpur')



function setcitiesp() {
	  stateySel = document.getElementById('state');
	  stateList = states[stateySel.value];
	  changeSelect('canpermastate', stateList, stateList,stateList);
	  setTownsp();
	}

	function setTownsp() {
		stateySel = document.getElementById('state');
	  stateSel = document.getElementById('canpermastate');
	  cityList = cities[stateySel.value][stateSel.value];
	  changeSelect('canpermacity', cityList, cityList,cityList);
	  setPARTYp();
	}
	
	function setPARTYp() {
		  partySel = document.getElementById('partyc');
		  partyList = Party[partySel.value];
		  changeSelect('canp', partyList, partyList,partyList);
		  setCANDIDATEp();
		}

		function setCANDIDATEp() {
			partySel = document.getElementById('partyc');
		 party1Sel = document.getElementById('canp');
		  canList = Candidate[partySel.value][party1Sel.value];
		  changeSelect('canpid', canList, canList,canList);
		  
		}
		
	

	
	function changeSelect(fieldID, newOptions, newValues,newmore) {
	  selectField = document.getElementById(fieldID);
	  selectField.options.length = 0;
	  for (i=0; i<newOptions.length; i++) {
	    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i], newmore[i]);
	  }
	}





// Multiple onload function created by: Simon Willison
// http://simonwillison.net/2004/May/26/addLoadEvent/
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}

addLoadEvent(function() {
	setcitiesp();
	//setPARTYp();
	
});
-->




</script>

</head> 




<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/11.png');"> 
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <h3 class="heading">HAVE A VISION !! MAKE A RIGHT DECISION!!</h3>
      <p>YOURS COUNTRY'S FUTURE IS IN YOUR FINGER TIPS</p>
      <p class="font-x1 uppercase bold">VOTE FOR BETTER TOMMOROW</p>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn" href="#">GENERAL VOTERS</a></li>
          <li><a class="btn inverse" href="CanLogin.jsp">CANDIDATES</a></li>
        </ul>
      </footer>
    </article>
    <!-- ################################################################################################ -->
    </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div class="fl_left">
        <ul>
          <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
          <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
        </ul>
      </div>
      <div class="fl_right">
        <ul>
          <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#c4">Login</a></li>
		  <li><a href="VLogoutServlet">Logout</a></li>
          <li><a href="Register11.jsp">Register</a></li>
          <li>  ${VfName}</li>
        </ul>
      </div>
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Halice</a></h1>
    </div>
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a class="drop" href="#">Pages</a>
          <ul>
            <li><a href="pages/gallery.html">Gallery</a></li>
            <li><a href="pages/full-width.html">Full Width</a></li>
            <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
            <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
            <li><a href="pages/basic-grid.html">Basic Grid</a></li>
          </ul>
        </li>
        <li><a class="drop" href="#">Dropdown</a>
          <ul>
            <li><a href="#">Level 2</a></li>
            <li><a class="drop" href="#">Level 2 + Drop</a>
              <ul>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
                <li><a href="#">Level 3</a></li>
              </ul>
            </li>
            <li><a href="#">Level 2</a></li>
          </ul>
        </li>
        <li><a href="#">Link Text</a></li>
        <li><a href="#">Link Text</a></li>
      </ul>
    </nav>
    <!-- ################################################################################################ -->
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->


<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle center">
      <h6 class="heading">Candidates</h6>
      <p> DETAILS</p>
    </div>
    <ul class="nospace group">
      <li class="one_quarter first">
        <article><a href="#"><i class="icon btmspace-30 fa fa-gitlab"></i></a>
          <h6 class="heading font-x1">BSP</h6>
          <p>BAHUJAN SAMAJ PARTY [&hellip;]</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="#"><i class="icon btmspace-30 fa fa-globe"></i></a>
          <h6 class="heading font-x1">BJP</h6>
          <p>BHARTIYA JANTA PARTY[&hellip;]</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="#"><i class="icon btmspace-30 fa fa-tencent-weibo"></i></a>
          <h6 class="heading font-x1">CPI</h6>
          <p>COMMUNIST PARTY OF INDIA[&hellip;]</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="#"><i class="icon btmspace-30 fa fa-wpexplorer"></i></a>
          <h6 class="heading font-x1">INC</h6>
          <p>INDIA NATIONAL CONGRESS[&hellip;]</p>
        </article>
      </li>
    </ul><!-- 
     <li class="one_quarter">
        <article><a href="#"><i class="icon btmspace-30 fa fa-wpexplorer"></i></a>
          <h6 class="heading font-x1">NCP</h6>
          <p> NATIONAL CONGRESS PARTY[&hellip;]</p>
        </article>
      </li>
    </ul> -->
    <!-- ################################################################################################ -->
  </section>
</div>


<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay" style="background-image:url('images/demo/backgrounds/13.jpg');">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h2 class="heading">Voter Logged in </h2>
      <nav>
        <ul class="nospace inline pushright uppercase">
          <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#castdetails">Voting Purpose</a></li>
          <li><a href="VoterUpdate?vid=${VfName.getVid()}">Profile View/Update</a></li>
          <li><a href="VoterViewForm?vid=${VfName.getVid()}">Profile View</a></li>
           <li><a href="VoterViewForm?vid=${VfName.getVid()}">Cancel Voter Registration</a></li>
          <li><a href="#">Voting Process Details</a></li>
          <li><a href="#">Disclaimer</a></li>
        </ul>
      </nav>
    </div>
    <!-- ################################################################################################ -->



 <!-- ################################################################################################ -->
    <hr class="btmspace-50">
    <!-- ################################################################################################ -->
    <div class="group">
    <!--    <div class="one_third first">
        <h6 class="heading">Augue curabitur vitae</h6>
        <ul class="nospace btmspace-30 linklist contact">
          <li><i class="fa fa-map-marker"></i>
            <address>
            Street Name &amp; Number, Town, Postcode/Zip
            </address>
          </li>
          <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
          <li><i class="fa fa-fax"></i> +00 (123) 456 7890</li>
          <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
        </ul>
      </div>   --> 
      
    
      <div class="two_third">
 <div class="background">
      <div class="transbox">
        <h6  id="Register1">CANDIDATE REGISTRATION FORM</h6>
        <p class="nospace btmspace-15">This Registration Form is registered by candidate under the supervision of Election Commissioner</p>
        <form action="" method="post">

          <fieldset>
            <legend>Login:</legend>
            
 <body>
<form action="VotingProcess.java" method="post">  
<table border="2" color="red" cellpadding="5">
<tr  class="transbox">

<tr>
<td colspan="2" align="left" width="30%"> <p class="nospace btmspace-15">-----Cast Voting------

<img src="images/demo/backgrounds/13.jpg"style="width:32%; height:25%; margin-left:0%" align="right"></p></td> 
</td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCountry" id="canNomiAreaCountry" onchange="setStates();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</P></td>
<td style="text-align: left;">
<select name="canNomiAreaState" id="canNomiAreaState" onchange="setCities();">
  <option value=""><p class="nospace btmspace-15">Please select a Country</P></option>
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCity"  id="canNomiAreaCity">
  <option value=""><p class="nospace btmspace-15">Please select a Country</p></option>
</select>
</td>
</tr>



<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">PARTY:</p></td>
<td style="text-align: left;">
<select name="partyc"  id="partyc"  onchange="setPARTYp();" >
 <option value="BJP">Select Party..</option>
 <c:forEach items="${sessionScope.List}" var="ds">
 <option>
		<c:out value="${ds.partyName}"></c:out> 
	</option>
 
 </c:forEach>
  
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">CANDIDATE:</p></td>
<td style="text-align: left;">
<select name="canp"  id="canp"  onchange="setCANDIDATEp();" >
  <option value='-1'>Please select a State</option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">CANDIDATEID:</p></td>
<td style="text-align: left;">
<select name="canpid"  id="canpid">
  <option value="">Please select a State</option>
</select>
</td>
</tr>



<!--
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">STATE:</p></td>
<td style="text-align: left;">
<select name="state" id="state" onchange="setcitiesp();">
  <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">CITY:</p></td>
<td style="text-align: left;">
<select name="canpermastate" id="canpermastate" onchange="setTownsp();">
  <option value="">Please select a State</option>
</select>
</td>
</tr>

<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Towns:</p></td>
<td style="text-align: left;">
<select name="canpermacity"  id="canpermacity"   >
  <option value="">Please select state</option>
  
</select>
</td>
</tr>


<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">PARTY:</p></td>
<td style="text-align: left;">
<select name="partyc"  id="partyc"  onchange="setPARTYp();" >
 <option value="BJP">BJP</option>
  <option value="BSP">BSP</option>
  <option value="cpm">cpm</option>
  <option value="inc">inc</option>
   <option value="ncp">ncp</option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">CANDIDATE:</p></td>
<td style="text-align: left;">
<select name="canp"  id="canp"  onchange="setCANDIDATEp();" >
  <option value="">Please select a State</option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">CANDIDATEID:</p></td>
<td style="text-align: left;">
<select name="canpid"  id="canpid">
  <option value="">Please select a State</option>
</select>
</td>
</tr>-->

</table>


            <button type="submit" value="submit">Submit</button>
          </fieldset>
        </form>
      </div>
      
 <!-- vote by city   
      <div class="one_third">
        <h6 class="heading">candidatess</h6>
        <p class="nospace btmspace-30">Enter details for the verification in order to cast vote</p>
        <form name="test" method="POST">
          <fieldset>
           
<table>
<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="vcorrescountry" id="vcorrescountry" onchange="setStates();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="vcorresstate" id="vcorresstate" onchange="setCities();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="vcorrescity"  id="vcorrescity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>
</table>

          </fieldset>
        </form>
      </div>--> 
     
      
      
      
      
     <!-- 
      <div class="one_third">
        <h6 class="heading">Upcoming Event</h6>
        <figure><a href="#"><img class="borderedbox inspace-10 btmspace-15" src="images/demo/320x168.png" alt=""></a>
          <figcaption>
            <h6 class="nospace font-x1"><a href="#">UpComing Event Details</a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
          </figcaption>
        </figure>
      </div>
       --> 
      
   <!--   <div class="one_third">
        <h6 class="heading" id="c4">LOGIN FORM</h6>
        <p class="nospace btmspace-30">Login Either By GeneralVoters Or By Holding Candidates</p>
        <form method="post" action="VoterLogin">
          <fieldset>
            <legend>Login:</legend>
            
             <input class="btmspace-15" type="email" value="" name="vemailId" placeholder="Email">
            <input class="btmspace-15" type="password" value=""  name="vpassword" placeholder="Name">
           
            <button type="submit" value="submit">Submit</button>
          </fieldset>
        </form>
      </div>-->
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->






<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">I-voting</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>







<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>





</body>
</html>