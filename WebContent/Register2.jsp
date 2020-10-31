<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Halice</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all"><style>
div.background {
  background: url('images/demo/backgrounds/22.jpg') repeat;
  border: 2px solid black;
}

div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid grey;
  opacity: 0.6;

  filter: alpha(opacity=60; ); /* For IE8 and earlier */
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}

</style>
<script type="text/javascript">



var states1 = new Array();
states1['Uttar Pradesh'] = new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');

states1['Maharashtra'] = new Array('Mumbai','Pune','Nagpur','Nashik')




var cities1 = new Array();

cities1['Maharashtra'] = new Array();
cities1['Maharashtra']['Mumbai']          = new Array('Mumbai1','Mumbai2','Mumbai3','Mumbai4');
cities1['Maharashtra']['Pune'] = new Array('Pune1','Pune2','Pune3','Pune4','Varanasi','Allahabad');


cities1['Uttar Pradesh'] = new Array();
cities1['Uttar Pradesh']['Kanpur'] = new Array('Afjalpur','Aima','Aiti','Akhari','Amauli','Amlipur','Arajimajhawan','Atawa','Babi Chingi');
cities1['Uttar Pradesh']['Varanasi']       = new Array('Amara Khaira Chak','Baragaon','Benipur','bhagwanpur','Bhogabir','Birbhanpur','Dindaspur','Gangapur','Harpal Pur','Kabir Chaura','Kakarmatta','Kotwa','kandwa','Lerhupur','Lohta','Maruadih','Phulwaria','Ramnagar','Salarpur','Shivdaspur','Sigra','Sir Gobardhan','Suzabad','Umarha','Varanasi','Varanasi cantonment')
cities1['Uttar Pradesh']['Lucknow']       = new Array('','','','','','','','','','','','','','','','')


;





function setStatesp() {
  cntrySel = document.getElementById('canpermastate');
  stateList = states1[cntrySel.value];
  changeSelect('canpermacity', stateList, stateList);
  setCitiesp();
}

function setCitiesp() {
  cntrySel = document.getElementById('canpermastate');
  stateSel = document.getElementById('canpermacity');
  cityList = cities1[cntrySel.value][stateSel.value];
  changeSelect('canpermatown', cityList, cityList);
}
function setStatesc() {
	  cntrySel = document.getElementById('cancorresstate');
	  stateList = states1[cntrySel.value];
	  changeSelect('cancorrescity', stateList, stateList);
	  setCitiesc();
	}

	function setCitiesc() {
	  cntrySel = document.getElementById('cancorresstate');
	  stateSel = document.getElementById('cancorrescity');
	  cityList = cities1[cntrySel.value][stateSel.value];
	  changeSelect('cancorrestown', cityList, cityList);
	}



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
	setStatesp()
	setStatesc()
  setStates();
});


function setReadOnly(obj)
{
if(obj.value == "Yes")
{
document.myform1.canpwdudidno.style.backgroundColor = "";
document.myform1.canpwdudidno.readOnly = 0;

} else {
document.myform1.canpwdudidno.style.backgroundColor = "#eeeeee";
document.myform1.canpwdudidno.readOnly = 1;


}
}

function ReadcriminalOnly(obj)
{
if(obj.value == "Yes")
{
document.myform1.canCriminalRecord.style.backgroundColor = "";
document.myform1.canCriminalRecord.readOnly = 0;
document.myform1.canCriminalDoc.style.backgroundColor = "";
document.myform1.canCriminalDoc.readOnly = 0;
} else {
document.myform1.canCriminalRecord.style.backgroundColor = "#eeeeee";
document.myform1.canCriminalRecord.readOnly = 1;
document.myform1.canCriminalDoc.style.backgroundColor = "#eeeeee";
document.myform1.canCriminalDoc.readOnly = 1;

}
}
function creditstatus(obj)
{
if(obj.value == "Yes")
{
document.myform1.canCreditName.style.backgroundColor = "";
document.myform1.canCreditName.readOnly = 0;
document.myform1.canCreditDesignation.style.backgroundColor = "";
document.myform1.canCreditDesignation.readOnly = 0;
document.myform1.canCreditPartyName.style.backgroundColor = "";
document.myform1.canCreditPartyName.readOnly = 0;
document.myform1.canCreditPartyId.style.backgroundColor = "";
document.myform1.canCreditPartyId.readOnly = 0;
document.myform1.canCreditPartyName.style.backgroundColor = "";
document.myform1.canCreditPartyName.disabled = 0;
document.myform1.canCreditRelation.style.backgroundColor = "";
document.myform1.canCreditRelation.disabled = 0;
} else {
document.myform1.canCreditName.style.backgroundColor = "#eeeeee";
document.myform1.canCreditName.readOnly = 1;
document.myform1.canCreditDesignation.style.backgroundColor = "#eeeeee";
document.myform1.canCreditDesignation.readOnly = 1;
document.myform1.canCreditPartyName.style.backgroundColor = "#eeeeee";
document.myform1.canCreditPartyName.readOnly = 1;
document.myform1.canCreditPartyId.style.backgroundColor = "#eeeeee";
document.myform1.canCreditPartyId.readOnly = 1;
document.myform1.canCreditPartyName.style.backgroundColor = "#eeeeee";
document.myform1.canCreditPartyName.disabled = 1;
document.myform1.canCreditRelation.style.backgroundColor = "#eeeeee";
document.myform1.canCreditRelation.disabled = 1;


}
}
</script>

<!--
<script type="text/javascript">

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


;





function setStatesp() {
  cntrySel = document.getElementById('canpermastate');
  stateList = states[cntrySel.value];
  changeSelect('canpermacity', stateList, stateList);
  setCitiesp();
}

function setCitiesp() {
  cntrySel = document.getElementById('canpermastate');
  stateSel = document.getElementById('canpermacity');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('canpermatown', cityList, cityList);
}
function setStatesc() {
	  cntrySel = document.getElementById('cancorresstate');
	  stateList = states[cntrySel.value];
	  changeSelect('cancorrescity', stateList, stateList);
	  setCitiesc();
	}

	function setCitiesc() {
	  cntrySel = document.getElementById('cancorresstate');
	  stateSel = document.getElementById('cancorrescity');
	  cityList = cities[cntrySel.value][stateSel.value];
	  changeSelect('cancorrestown', cityList, cityList);
	}
	function setStatesnominee() {
		  cntrySel = document.getElementById('canNomiAreaState');
		  stateList = states[cntrySel.value];
		  changeSelect('canNomiAreaCity', stateList, stateList);
		  setCitiesnominee();
		}

		function setCitiesnominee() {
		  cntrySel = document.getElementById('canNomiAreaState');
		  stateSel = document.getElementById('canNomiAreaCity');
		  cityList = cities[cntrySel.value][stateSel.value];
		  changeSelect('canNomiAreaTown', cityList, cityList);
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
  setStatesc();
  setStatesp();
  setStatesnominee()
});

</script>-->

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
          <li><a class="btn" href="Login1.jsp">GENERAL VOTERS</a></li>
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
          <li><a  href="Register11.jsp">Register</a>   
          </li>
          <li> ${vfirstname.getVfirstname()}</li>
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
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/101.jpg')">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle center">
      <h6 class="heading">Venenatis quam aenean</h6>
      <p>Sodales blandit felis in venenatis facilisis</p>
    </div>
    <div class="group testimonials">
      <article class="one_half first"><a href="Register11.jsp"><img src="images/demo/103.jpg" alt=""></a>
        <blockquote>Fusce dignissim ex ac fermentum volutpat cras euismod vitae odio non luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus in tempor.</blockquote>
        <h6 class="heading">John D.</h6>
        <em>Finibus enim vel</em></article>
      <article class="one_half"><a href="#Register1"><img src="images/demo/102.jpg" alt=""></a>
        <blockquote>Iaculis neque at euismod proin sed luctus ex etiam mattis tortor est at mattis enim ultrices quis donec sed accumsan arcu in varius magna aenean ut lectus semper lorem ut.</blockquote>
        <h6 class="heading"><a href="#Register1">Jane D.</a></h6>
        <em>Candidate Registration</em></article>
    </div>
    <!-- ################################################################################################ -->
  </section>
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
        <article><a href="Bsp.jsp"> <figure class="avatar"><img src="images/demo/bjp.gif" alt=""></figure>
      <!--   <i class="icon btmspace-30 fa fa-gitlab"></i>--> </a>
          <h6 class="heading font-x1">BSP</h6>
          <p>BAHUJAN SAMAJ PARTY [&hellip;]</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="Bjp.jsp"><figure class="avatar"><img src="images/demo/BSP.gif" alt=""></figure>
        <!--<i class="icon btmspace-30 fa fa-globe"></i>--></a>
          <h6 class="heading font-x1">BJP</h6>
          <p>BHARTIYA JANTA PARTY[&hellip;]</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="Cpm.jsp"><figure class="avatar"><img src="images/demo/CPI.gif" alt=""></figure>
        <!--  <i class="icon btmspace-30 fa fa-tencent-weibo"></i>--></a>
          <h6 class="heading font-x1">CPI</h6>
          <p>COMMUNIST PARTY OF INDIA[&hellip;]</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="Inc.jsp"><figure class="avatar"><img src="images/demo/NCP2.gif" alt=""></figure>
        <!--  <i class="icon btmspace-30 fa fa-wpexplorer"></i>--></a>
          <h6 class="heading font-x1">INC</h6>
          <p> NATIONAL CONGRESS PARTY[&hellip;]</p>
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
      <h2 class="heading">Candidate Registration </h2>
      <nav>
        <ul class="nospace inline pushright uppercase">
          <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#castdetails">Profile View/Update</a></li>
          <li><a href="#">Cancel nominee Registration</a></li>
          <li><a href="#">Voting Process Details</a></li>
          <li><a href="#">Disclaimer</a></li>
        </ul>
      </nav>
    </div>
    <!-- ################################################################################################ -->
<div class="two_third">
 <div class="background">
      <div class="transbox">
        <h6  id="Register1">CANDIDATE REGISTRATION FORM</h6>
        <p class="nospace btmspace-15">This Registration Form is registered by candidate under the supervision of Election Commissioner</p>
 
          <fieldset>
            <legend>Login:</legend>
            
 <body>
<form name="myform1" action="SaveCanServlet" method="post" enctype="multipart/form-data">  
<table border="0" cellpadding="5">
<tr  class="transbox">
<tr>
<td><p class="nospace btmspace-15">Registered :</p></td>
<td><input type="radio" name="canStatus1" value="Not Registered" checked="Not Registered" size="10">Not Registered
<input type="radio" name="canStatus1" value="Registered" size="10" disabled> Registered</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Nomination :</p></td>
<td><input type="radio" name="canStatus2" value="Not Accepted" checked="Not Accepted" size="10">Not Accepted
<input type="radio" name="canStatus2" value="Accepted" size="10" disabled> Accepted</td>
</tr>
<tr>
<td><p class="nospace btmspace-15">First Name</p></td>
<td><input type="text" name="canfirstname"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Middle Name</p></td>
<td><input type="text" name="canmiddlename"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Last Name</p></td>
<td><input type="text" name="canlastname"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gender</p></td>
<td><input type="radio" name="cangender" value="male" size="10"><p class="nospace btmspace-10">Male</p>
<input type="radio" name="cangender" value="Female" size="10"><p class="nospace btmspace-15">Female</p>
<input type="radio" name="cangender" value="Other" size="10"><p class="nospace btmspace-13">Other</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">RelationShip Status</p></td>
<td><input type="radio" name="canmaritalstatus" value="yes" size="10"><p class="nospace btmspace-15">Married</p>
<input type="radio" name="canmaritalstatus" value="no" size="10"><p class="nospace btmspace-15">Unmarried</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Father's Name</p></td>
<td><input type="text" name="canfathername"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mother's Name</p></td>
<td><input type="text" name="canmothername"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Wife's Name</p></td>
<td><input type="text" name="canwifename"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Husband's Name</p></td>
<td><input type="text" name="canhusbandname"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gaurdian Name</p></td>
<td><input type="text" name="cangaurdianname"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Age</p></td>
<td><input type="text" name="canage"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">DOB</p></td>
<td><input type="date" name="candob"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Occupation</p></td>
<td><input type="radio" name="canoccupationstatus" value="Private" size="10"><p class="nospace btmspace-15">Private</p>
<input type="radio" name="canoccupationstatus" value="Government" size="10"><p class="nospace btmspace-15">Government</p>
<input type="radio" name="canoccupationstatus" value="Student" size="10"><p class="nospace btmspace-15">Student</p>
<input type="radio" name="canoccupationstatus" value="Other" size="10"><p class="nospace btmspace-15">Other</p></td>
</tr>
<!--  
<tr>
<td><p class="nospace btmspace-15">Occupation Doc</p></td>
<td><input type="file" name="canoccupationdoc"></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Designation</p></td>
<td><input type="text" name="candesignation"></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Adhar No</p></td>
<td><input type="text" name="canadharno"></td>
</tr>
<!--  
<tr>
<td><p class="nospace btmspace-15">Adhar Doc</p></td>
<td><input type="file" name="canadhardoc"></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Pan No</p></td>
<td><input type="text" name="canpanno"></td>
</tr>
<!--  
<tr>
<td><p class="nospace btmspace-15">Pan Doc</p></td>
<td><input type="file" name="canpandoc"></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Photo</p></td>
<td><input type="file" name="canphoto"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mobile No</p></td>
<td><input type="text" name="canmob"></td>
</tr>
<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Correspondance address------</p></td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="cancorrescountry"  id="cancorrescountry" >
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="cancorresstate" id="cancorresstate" onchange="setStatesc();">
 <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="cancorrescity" id="cancorrescity" onchange="setCitiesc();">
  <option value="">Please select a State</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Town:</td>
<td style="text-align: left;">
<select name="cancorrestown"  id="cancorrestown">
  <option value="">Please select a State</option>
</select>
</td>
</tr>
<tr>
<td><p class="nospace btmspace-15">Voters Address</p></td>
<td><input type="text"  name="cancorresaddress"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="cancorrespincode"></td>
</tr>
<tr>

<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Permanent address------</p></td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="canpermacountry"  id="canpermacountry" >
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr>
<tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="canpermastate" id="canpermastate" onchange="setStatesp();">
 <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="canpermacity"  id="canpermacity" onchange="setCitiesp();">
  <option value="">Please select a State</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Town:</td>
<td style="text-align: left;">
<select name="canpermatown"  id="canpermatown">
  <option value="">Please select a State</option>
</select>
</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Voters Address</p></td>
<td><input type="text"  name="canpermaaddress"></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="canpermapincode"></td>
</tr>
<tr>

<tr>
<td><p class="nospace btmspace-15">Differently Challenged</p></td>
<td><input type="radio" name="canpwdstatus" value="Yes" size="10" checked onclick="setReadOnly(this)"><p class="nospace btmspace-15">Yes</p>
<input type="radio" name="canpwdstatus" value="No" size="10"  onclick="setReadOnly(this)"><p class="nospace btmspace-15">No</p>
</tr>

<tr>
<td><p class="nospace btmspace-15">PwdUdId No</p></td>
<td><input type="text" name="canpwdudidno"></td>
</tr>
<!-- 
<tr>
<th><p class="nospace btmspace-15">PwdUdIdDoc</p></td>
<td><input type="file" name="canpwddoc"></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Criminal Record</p></td>
<td><input type="radio" name="canCriminalStatus" value="Yes" size="10" checked onclick="ReadcriminalOnly(this)"><p class="nospace btmspace-15">Yes</p>
<input type="radio" name="canCriminalStatus" value="No" size="10"  onclick="ReadcriminalOnly(this)"><p class="nospace btmspace-15">No</p>
</tr>

<tr>
<td><p class="nospace btmspace-15">Criminal Record Detail</p></td>
<td><input type="text" name="canCriminalRecord"></td>
</tr>
<!-- 
<tr>
<td><p class="nospace btmspace-15">Criminal Doc</p></td>
<td><input type="file" name="canCriminalDoc"></td>
</tr>
 -->
<tr>
<tr>
<td><p class="nospace btmspace-15">Party Name</p></td>
<td><select Name="partyName">
<option value="-1" selected><p class="nospace btmspace-15">select..</p></option>
<option value="bjp"><p class="nospace btmspace-15">BJP</p></option>
<option value="bsp"><p class="nospace btmspace-15">BSP</p></option>
<option value="cpi"><p class="nospace btmspace-15">CPI</p></option>
<option value="ncp"><p class="nospace btmspace-15">NCP</p></option>
</select></td>
</tr>


<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Candidate Nominated Area Details------</p></td>


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
<!--  <tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCountry" id="canNomiAreaCountry" onchange="setStatesnominee();">
  <option value="India">India</option>
  <option value="Other">other</option> 
  
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaState"   id="canNomiAreaState"  onchange="setStatesnominee();">
  <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCity"  id="canNomiAreaCity" onchange="setCitiesnominee();">
  <option value=""><p class="nospace btmspace-15">Please select a State</p></option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Town:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaTown" id="canNomiAreaTown">
  <option value="">Please select a State</option>
</select>
</td>
</tr>-->
<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="canNomiAreaPincode"></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Candidate Credit Point</p></td>
<td><input type="radio" name="canCreditStatus" value="Yes" size="10" checked onclick="creditstatus(this)"><p class="nospace btmspace-15">Yes</p>
<input type="radio" name="canCreditStatus" value="No" size="10"  onclick="creditstatus(this)"><p class="nospace btmspace-15">No</p>
</tr>

<tr>
<td><p class="nospace btmspace-15">Credit Full Name</p></td>
<td><input type="text" name="canCreditName"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Candidate Credit Relation</p></td>
<td><select Name="canCreditRelation">
<option value="-1" selected><p class="nospace btmspace-15">select..</p></option>
<option value="Father"><p class="nospace btmspace-15">Father</p></option>
<option value="Mother"><p class="nospace btmspace-15">Mother</p></option>
<option value="Uncle"><p class="nospace btmspace-15">Uncle</p></option>
<option value="Aunty"><p class="nospace btmspace-15">Aunty</p></option>
<option value="Brother"><p class="nospace btmspace-15">Brother</p></option>
<option value="Sister"><p class="nospace btmspace-15">Sister</p></option>
<option VALUE="OTHER"><p class="nospace btmspace-15">OTHER</p></option>
</select></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Credit Party Name</p></td>
<td><select Name="canCreditPartyName">
<option value="-1" selected>select..</option>
<option value="bjp"><p class="nospace btmspace-15">BJP</p></option>
<option value="bsp"><p class="nospace btmspace-15">BSP</p></option>
<option value="cpi"><p class="nospace btmspace-15">CPI</p></option>
<option value="ncp"><p class="nospace btmspace-15">NCP</p></option>
</select></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Credit Designation</p></td>
<td><input type="text" name="canCreditDesignation" size="40"></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Security Question</p></td>
<td><select name="canSecurityQues">
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?"><p class="nospace btmspace-15">What is your pet animal name?</p></option>
 <option value="what is your class Teacher name"><p class="nospace btmspace-15">What is your class Teacher name?</p></option>
 <option value="What is your favroite company you want to work?"><p class="nospace btmspace-15">What is your favorite company you want to work?</p></option>
</select></td>

</td></tr>

<tr><td><p class="nospace btmspace-15">Answer</p></td>
<td align="right"><input type="text" name="canSecurityAnswer" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Email Id</p></td>
<td><input type="text" name="canEmailId"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Password</p></td>
<td><input type="password" name="canPassword"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Re-password</p></td>
<td><input type="password" name="canRepassword"></td>
</tr>



<tr>
<td></td>
<td align="center"><input type="submit" value="Submit"></td>
</tr>


</table>
</form></div>
          </fieldset>
        </form>
        </div>
        </div>

 <!-- ################################################################################################ -->
    <hr class="btmspace-50">
    <!-- ################################################################################################ -->
 <!--    <div class="group">
      <div class="one_third first">
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
      </div>   
      
    
      
      
    
      <div class="one_third">
        <h6 class="heading">Upcoming Event</h6>
        <figure><a href="#"><img class="borderedbox inspace-10 btmspace-15" src="images/demo/14.jpg" alt=""></a>
          <figcaption>
            <h6 class="nospace font-x1"><a href="#">UpComing Event Details</a></h6>
            <time class="font-xs block btmspace-10" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
          </figcaption>
        </figure>
      </div>
        
      
      <div class="one_third">
      <div class="background">
      <div class="transbox">
        <h6 class="heading" id="c4">LOGIN FORM</h6>
        <p class="nospace btmspace-30">Login Either By Holding Candidates</p>
        <form method="post" action="VoterLogin">
          <fieldset>
            <legend>Login:</legend>
            <table class="background"><tr><td>
             <input class="btmspace-15" type="email" value="" name="vemailId" placeholder="Email"></td></tr>
          <tr class="transbox">><td>  <input class="btmspace-15" type="password" value=""  name="vpassword" placeholder="Name"></td></tr>
          <tr><td> 
            <button type="submit" value="submit">Submit</button></td></tr>
            </table>
          </fieldset>
        </form>
        </div>
        </div>
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