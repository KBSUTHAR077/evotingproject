<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Halice</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

<style>
<!-- HTML Example by Way2Tutorial.com -->
.div-scroll
{
height:100px;
width:400px;
border:solid 2px orange;
overflow:scroll;
overflow-y:hidden;
overflow-x:scroll;
}
.p 
{
width:450px;
font-color:solid 2px orange;
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
  setStatesp();
  setStatesc();
  setStatesnominee();
});


	</script>
-->





</head>
<body id="top">

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/11.png');"> 
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
          <li><a href="../index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#">Login</a></li>
          <li><a href="#">Register</a></li>
          <li> ${adminFirstName.getAdminFirstName()}</li>
        </ul>
      </div>
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->





<!-- ################################################################################################ -->



<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="../index.html">Halice</a></h1>
    </div>
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li><a href="../index.html">Home</a></li>
        <li class="active"><a class="drop" href="#">Pages</a>
          <ul>
            <li><a href="gallery.html">Gallery</a></li>
            <li class="active"><a href="full-width.html">Full Width</a></li>
            <li><a href="sidebar-left.html">Sidebar Left</a></li>
            <li><a href="sidebar-right.html">Sidebar Right</a></li>
            <li><a href="basic-grid.html">Basic Grid</a></li>
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
<div class="wrapper row2">
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Lorem</a></li>
      <li><a href="#">Ipsum</a></li>
      <li><a href="#">Dolor</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
</div>


<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6>Admin Task</h6>
      <nav class="sdb_holder">
        <ul>
          <li><a href="#About">AdminRegistration FormAdmin login</a></li>
          <li><a href="#Selection">Admin login</a>
            	<ul>
              		<li><a href="#Power">Admin Profile</a></li>
          			<li><a href="#CMlist">View/delete </a></li>
         		 </ul>
         
           <li><a href="#Power">Voters Profile</a></li>
           		<ul>
           			<li><a href="#Selection">Add voters</a></li>
         			<li><a href="#CMlist">View/delete </a></li>
          		</ul>
          		
          <li><a href="#Power">Candidate Profile</a></li>
           		<ul>
           			<li><a href="#Selection">Add voters</a></li>
         			<li><a href="#CMlist">View/delete </a></li>
          		</ul>
          <li><a href="#Selection">Result View</a>
            
          <li><a href="#Power">Dispaly Result</a></li>
         
      </nav>
      <div class="sdb_holder">
        <h6>Lorem ipsum dolor</h6>
        <address>
        Full Name<br>
        Address Line 1<br>
        Address Line 2<br>
        Town/City<br>
        Postcode/Zip<br>
        <br>
        Tel: xxxx xxxx xxxxxx<br>
        Email: <a href="#">contact@domain.com</a>
        </address>
      </div>
      
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="content three_quarter"> 
     
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <h1>Cheif Minister</h1>
      <h2 id="About">About Cheif Minister</h2>
   <p class="p"></p>
     

<form action="AdminUpdateCandidate1" method="post">  
<table border="0" cellpadding="5"  align="left">

<tr>
<td><p class="nospace btmspace-15">ApplicationID</p></td>
<td><input type="text" name="canId" value="${list.getCanId()}"></td>

</tr>
<tr>
<td><p class="nospace btmspace-15">Registered :</p></td>
<td><input type="radio" name="canStatus1" value="Not Registered" size="10">Not Registered
<input type="radio" name="canStatus1" value=" Registered" size="10"> Registered</td>
</tr>
<tr>
<td><p class="nospace btmspace-15">Nomination :</p></td>
<td><input type="radio" name="canStatus2" value="Not Accepted"  size="10" >Not Accepted
<input type="radio" name="canStatus2" value="Accepted" size="10" > Accepted</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">NominationId No.</p></td>
<td><input type="text" name="canNominationId"  value="${list.getCanNominationId()}"></p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">First Name</p></td>
<td><input type="text" name="canfirstname"  value="${list.getCanfirstname()}"></p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Middle Name</p></td>
<td><input type="text" name="canmiddlename"  value="${list.getCanmiddlename()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Last Name</p></td>
<td><input type="text" name="canlastname" value="${list.getCanlastname()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gender</p></td>
<td><input type="radio" name="cangender" value="male" size="10" value="${list.getCangender()}">Male
<input type="radio" name="cangender" value="Female" size="10">Female
<input type="radio" name="cangender" value="Other" size="10">Other
</td>
</tr>
<tr>
<td><p class="nospace btmspace-15">Gender</p></td>
<td><input type="radio" name="cangender" value="male" size="10" value="${list.getCangender()}">Male
<input type="radio" name="cangender" value="Female" size="10">Female
<input type="radio" name="cangender" value="Other" size="10">Other
</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">RelationShip Status</p></td>
<td><input type="radio" name="canmaritalstatus" value="yes" size="10" onclick="">Married
<input type="radio" name="canmaritalstatus" value="no" size="10">Unmarried</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Father's Name</p></td>
<td><input type="text" value="${list.getCanfathername()}" name="canfathername"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mother's Name</p></td>
<td><input type="text" value="${list.getCanmothername()}" name="canmothername"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Wife's Name</p></td>
<td><input type="text"value="${list.getCanwifename()}" name="canwifename"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Husband's Name</p></td>
<td><input type="text" value="${list.getCanhusbandname()}" name="canhusbandname"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gaurdian Name</p></td>
<td><input type="text" value="${list.getCangaurdianname()}" name="cangaurdianname"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Age</p></td>
<td><input type="text" value="${list.getCanage()}" name="canage"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">DOB</p></td>
<td><input type="date"value="${list.getCandob()}" name="candob"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Occupation</p></td>
<td><input type="radio" name="canoccupationstatus" value="Private" size="10">Private
<input type="radio" name="canoccupationstatus" value="Government" size="10">Government
<input type="radio" name="canoccupationstatus" value="Student" size="10">Student
<input type="radio" name="canoccupationstatus" value="Other" size="10">Other</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Occupation Doc</p></td>
<td><input type="file" value="${list.getCanoccupationdoc()}" name="canoccupationdoc"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Designation</p></td>
<td><input type="text" value="${list.getCandesignation()}" name="candesignation"></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Adhar No</p></td>
<td><input type="text" value="${list.getCanadharno()}" name="canadharno"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Adhar Doc</p></td>
<td><input type="file" value="${list.getCanadhardoc()}" name="canadhardoc"></td>
</tr>

<tr>
<th><p class="nospace btmspace-15">Pan No</p></th>
<td><input type="text" value="${list.getCanpanno()}" name="canpanno"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pan Doc</p></td>
<td><input type="file" value="${list.getCanpandoc()}" name="canpandoc"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Photo</p></td>
<td><input type="file" value="${list.getCanphoto()}" name="canphoto"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mobile No</p></td>
<td><input type="text" value="${list.getCanmob()}" name="canmob"></td>
</tr>
<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Correspondance address------</p></td>


<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="cancorrescountry" value="${list.getCancorrescountry()}" id="cancorrescountry" >
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="cancorresstate" value="${list.getCancorresstate()}" id="cancorresstate" onchange="setStatesc();">
 <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="cancorrescity" value="${list.getCancorrescity()}" id="cancorrescity" onchange="setCitiesc();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Town:</td>
<td style="text-align: left;">
<select name="cancorrestown"  value="${list.getCancorrestown()}"  id="cancorrestown">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>
<tr>
<td><p class="nospace btmspace-15">Voters Address</p></td>
<td><input type="text" name="cancorresaddress" value="${list.getCancorresaddress()}" name="cancorresaddress"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="cancorrespincode"  value="${list.getCancorrespincode()}"></td>
</tr>
<tr>

<tr>
<td colspan="2" ><p class="nospace btmspace-15">-----Permanent address------</p></td>

<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="canpermacountry" value="${list.getCanpermacountry()}" id="canpermacountry" >
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr>
<tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="canpermastate"  value="${list.getCanpermastate()}" id="canpermastate" onchange="setStatesp();">
 <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="canpermacity" value="${list.getCanpermacity()}" id="canpermacity" onchange="setCitiesp();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Town:</td>
<td style="text-align: left;">
<select name="canpermatown" value="${list.getCanpermatown()}" id="canpermatown">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Voters Address</p></td>
<td><input type="text" value="${list.getCancorresaddress()}" name="cancorresaddress"></td>
</tr>
<tr>
<td><p class="nospace btmspace-15">Pincode </p></td>
<td><input type="text" name="canpermapincode"  value="${list.getCanpermapincode()}"></td>
</tr>
<tr>

<tr>
<td><p class="nospace btmspace-15">Differently Challenged</p></td>
<td><input type="radio" name="canpwdstatus" value="Yes" size="10">Yes
<input type="radio" name="canpwdstatus" value="No" size="10">No</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">PwdUdId No</p></td>
<td><input type="text" name="canpwdudidno"  value="${list.getCanpwdudidno()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">PwdUdIdDoc</p></td>
<td><input type="file" name="canpwddoc"  value="${list.getCanpwddoc()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Criminal Record</p></td>
<td><input type="radio" name="canCriminalStatus" value="Yes" size="10">Yes
<input type="radio" name="canCriminalStatus" value="No" size="10">No</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Criminal Record Detail</p></td>
<td><input type="text" name="canCriminalRecord"  value="${list.getCanCriminalRecord()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Criminal Doc</p></td>
<td><input type="file" name="canCriminalDoc"  value="${list.getCanCriminalDoc()}"></td>
</tr>

<tr>
<tr>
<td><p class="nospace btmspace-15">Party Name</p></td>
<td><select Name="canPartyName"  value="${list.getCanPartyName()}">
<option value="-1" selected>select..</option>
<option value="BJP">BJP</option>
<option value="BSP">BSP</option>
<option value="CPI">CPI</option>
<option value="CPM">CPM</option>
<option value="INC">INC</option>
<option value="NCP">NCP</option>
<option VALUE="OTHER">OTHER</option>
</select></td>
</tr>


<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Candidate Nominated Area Details------</p></td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCountry" value="${list.getCanNomiAreaCountry()}"  id="canNomiAreaCountry" onchange="setStates();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</P></td>
<td style="text-align: left;">
<select name="canNomiAreaState" value="${list.getCanNomiAreaState()}"  id="canNomiAreaState" onchange="setCities();">
  <option value=""><p class="nospace btmspace-15">Please select a Country</P></option>
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCity"  value="${list.getCanNomiAreaCity()}"  id="canNomiAreaCity">
  <option value=""><p class="nospace btmspace-15">Please select a Country</p></option>
</select>
</td>
</tr>
<!--  
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCountry" value="${list.getCanNomiAreaCountry()}" id="canNomiAreaCountry">
  <option value="India">India</option>
  <option value="Other">other</option> 
</select></td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaState"  value="${list.getCanNomiAreaState()}" id="canNomiAreaState"  onchange="setStatesnominee();">
  <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaCity"  value="${list.getCanNomiAreaCity()}" id="canNomiAreaCity" onchange="setCitiesnominee();">
  <option value="">Please select a State</option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Town:</p></td>
<td style="text-align: left;">
<select name="canNomiAreaTown"  value="${list.getCanNomiAreaTown()}" id="canNomiAreaTown">
  <option value="">Please select a State</option>
</select>
</td>
</tr>-->
<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="canNomiAreaPincode" value="${list.getCanNomiAreaPincode()}"></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Candidate Credit Point<</td>
<td><input type="radio" name="canCreditStatus" value="Yes" size="10">Yes
<input type="radio" name="canCreditStatus" value="No" size="10">No</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Credit Full Name</p></td>
<td><input type="text" name="canCreditName"  value="${list.getCanCreditName()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Candidate Credit Relation</p></td>
<td><select Name="canCreditRelation" value="${list.getCanCreditRelation()}">
<option value="-1" selected>select..</option>
<option value="Father">Father</option>
<option value="Mother">Mother</option>
<option value="Uncle">Uncle</option>
<option value="Aunty">Aunty</option>
<option value="Brother">Brother</option>
<option value="Sister">Sister</option>
<option VALUE="OTHER">OTHER</option>
</select></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Credit Party Name</p></td>
<td>${list.getCanCreditPartyName()}<select Name="canCreditPartyName" value="${list.getCanCreditPartyName()}">
<option value="-1" selected>select..</option>
<option value="BJP">BJP</option>
<option value="BSP">BSP</option>
<option value="CPI">CPI</option>
<option value="CPM">CPM</option>
<option value="INC">INC</option>
<option value="NCP">NCP</option>
<option VALUE="OTHER">OTHER</option>
</select></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Credit Designation</p></td>
<td><input type="text" name="canCreditDesignation"  value="${list.getCanCreditDesignation()}"></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Security Question</p></td>
<td>${list.getCanSecurityQues()}<select name="canSecurityQues"  value="${list.getCanSecurityQues()}">
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select></td>

</td></tr>

<tr><td><p class="nospace btmspace-15">Answer</p></td>
<td align="right"><input type="text" name="canSecurityAnswer"  value="${list.getCanSecurityAnswer()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Email Id</p></td>
<td><input type="text" name="canEmailId" value="${list.getCanEmailId()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Password</p></td>
<td><input type="password" name="canPassword"  value="${list.getCanPassword()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Re-password</p></td>
<td><input type="password" name="canRepassword" value="${list.getCanRepassword()}"></td>
</tr>




 	 <tr><td></td><td>
 <button  align="left"type="submit" value="submit">Submit</button></td></tr>
      </table>
 	</tr>




        </table>
        </form></div>
        </fieldset>
      </form>
      
    
     
    </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->




<!-- ################################################################################################ -->
<!-- ################################################################################################ -->



<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved - <a href="#">Domain Name</a></p>
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