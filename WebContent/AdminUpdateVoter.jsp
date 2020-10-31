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
  cntrySel = document.getElementById('vpermastate');
  stateList = states[cntrySel.value];
  changeSelect('vpermacity', stateList, stateList);
  setCitiesp();
}

function setCitiesp() {
  cntrySel = document.getElementById('vpermastate');
  stateSel = document.getElementById('vpermacity');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('vpermatown', cityList, cityList);
}
function setStatesc() {
	  cntrySel = document.getElementById('vcorresstate');
	  stateList = states[cntrySel.value];
	  changeSelect('vcorrescity', stateList, stateList);
	  setCitiesc();
	}

	function setCitiesc() {
	  cntrySel = document.getElementById('vcorresstate');
	  stateSel = document.getElementById('vcorrescity');
	  cityList = cities[cntrySel.value][stateSel.value];
	  changeSelect('vcorrestown', cityList, cityList);
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
});

</script>
<!-- 
<script type="text/javascript">
var states = new Array();

states['India'] = new Array('Maharashtra','Uttar Pradesh');
states['Other'] = new Array('Other1','Other2');




var cities = new Array();

cities['India'] = new Array();
cities['India']['Maharashtra']          = new Array('Mumbai','Pune','Nagpur','Nashik');
cities['India']['Uttar Pradesh'] =      new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');


cities['Other'] = new Array();
cities['Other']['Other1'] = new Array('other11','other12');
cities['Other']['Other2']       = new Array('other21','other22');





function setStates() {
  cntrySel = document.getElementById('vcorrescountry');
  stateList = states[cntrySel.value];
  changeSelect('vcorresstate', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('vcorrescountry');
  stateSel = document.getElementById('vcorresstate');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('vcorrescity', cityList, cityList);
}
function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}


function setStatesp() {
	  cntrySel = document.getElementById('vpermacountry');
	  stateList = states[cntrySel.value];
	  changeSelect('vpermastate', stateList, stateList);
	  setCitiesp();
	}

	function setCitiesp() {
	  cntrySel = document.getElementById('vpermacountry');
	  stateSel = document.getElementById('vpermastate');
	  cityList = cities[cntrySel.value][stateSel.value];
	  changeSelect('vpermacity', cityList, cityList);
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
  setStates();
  setStatesp();
});

</script>-->

</div>


</tyle>
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
   <p class="p">hello</p>
      <form name="formAdminVoterUpdate" action="AdminUpdateVoter" method="post" >
<table border="0" cellpadding="5" align="left">
     
     <table border="1" cellpadding="10">


<tr>
<td><p class="nospace btmspace-15">ID</p></td>
<td><input type="text" name="vid" value="${list.getVid()}"></td>
</tr>
<tr>
<td><p class="nospace btmspace-15">APPLICATION NO.</p></td>
<td><input type="text" name="vepicNo" value="${list.getVepicNo()}"></td>
</tr>
<tr>
<td><p class="nospace btmspace-15">First Name</p></td>
<td><input type="text" name="vfirstname" value="${list.getVfirstname()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Middle Name</p></td>
<td><input type="text" name="vmiddlename" value="${list.getVmiddlename()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Last Name</p></td>
<td><input type="text" name="vlastname" value="${list.getVlastname()}"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gender</p></td>
<td><input type="radio" name="vgender" value="Male"   size="10"><p class="nospace btmspace-10">Male</p>
<input type="radio" name="vgender" value="Female"  size="10"><p class="nospace btmspace-15">Female</p>
<input type="radio" name="vgender" value="Other"   size="10"><p class="nospace btmspace-13">Other</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">RelationShip Status</p></td>
<td><input type="radio" name="vmaritalstatus" value="Unmarried" size="10"><p class="nospace btmspace-15">Married</p>
<input type="radio" name="vmaritalstatus" value="Married" size="10"><p class="nospace btmspace-15">Unmarried</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Father's Name</p></td>
<td><input type="text" name="vfathername"  value="${list.getVfathername()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mother's Name</p></td>
<td><input type="text" name="vmothername"  value="${list.getVmothername()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Wife's Name</p></td>
<td><input type="text" name="vwifename"  value="${list.getVwifename()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Husband's Name</p></td>
<td><input type="text" name="vhusbandname"  value="${list.getVhusbandname()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gaurdian Name</p></td>
<td><input type="text" name="vgaurdianname"  value="${list.getVgaurdianname()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Age</p></td>
<td><input type="text" name="vage"  value="${list.getVage()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">DOB</p></td>
<td><input type="date" name="vdob"  value="${list.getVdob()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Occupation</p></td>
<td><input type="radio" name="voccupatiostatus" value="Private" size="10"><p class="nospace btmspace-15">Private</p>
<input type="radio" name="voccupatiostatus" value="Government" size="10"><p class="nospace btmspace-15">Government</p>
<input type="radio" name="voccupatiostatus" value="Student" size="10"><p class="nospace btmspace-15">Student</p>
<input type="radio" name="voccupatiostatus" value="Other" size="10"><p class="nospace btmspace-15">Other</p></td>
</tr>
<!--  
<tr>
<td><p class="nospace btmspace-15">Occupation Doc</p></td>
<td><input type="file" name="voccupationdoc"  value="${list.getVoccupationdoc()}" ></td>
</tr>
 -->
<tr>
<td><p class="nospace btmspace-15">Designation</p></td>
<td><input type="text" name="vdesignation"  value="${list.getVdesignation()}" ></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Adhar No</p></td>
<td><input type="text" name="vadharno"  value="${list.getVadharno()}" ></td>
</tr>
<!-- 
<tr>
<td><p class="nospace btmspace-15">Adhar Doc</p></td>
<td><input type="file" name="vadhardoc" value="${list.getVadhardoc()}" ></td>
</tr>
 -->
<tr>
<td><p class="nospace btmspace-15">Pan No</p></td>
<td><input type="text" name="vpanno"  value="${list.getVpanno()}" ></td>
</tr>
<!-- 
<tr>
<td><p class="nospace btmspace-15">Pan Doc</p></td>
<td><input type="file" name="vpandoc"  value="${list.getVpandoc()}"  ></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Photo</p></td>
<td><input type="file" name="vphoto"  value="${list.getVphoto()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mobile No</p></td>
<td><input type="text" name="vmob"  value="${list.getVmob()}" ></td>
</tr>
<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Correspondance address------</p></td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="vcorrescountry" id="vcorrescountry" value="${list.getVcorrescountry()}"  onchange="setStatesc();">
  <option value="India">India</option>
  <option value="Other">other</option>  
  
</select>
</td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</p></td>
<td style="text-align: left;">
<select name="vcorresstate" value="${list.getVcorresstate()}" id="vcorresstate" onchange="setStatesc();">
 <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;">
<select name="vcorrescity" value="${list.getVcorrescity()}"  id="vcorrescity" onchange="setCitiesc();">
  <option value="">Please select a State</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Town:</p></td>
<td style="text-align: left;">
<select name="vcorrestown" value="${list.getVcorrestown()}" id="vcorrestown">
  <option value="">Please select a State</option>
</select>
</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">coress Address</p></td>
<td><input  type="text" value="${list.getVcorresaddress()}"  name="vcorresaddress" size="50" ></td>
</tr>
<tr>
<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="vcorrespincode"  value="${list.getVcorrespincode()}" ></td>
</tr>
<tr>

<tr>
<td colspan="2"><p class="nospace btmspace-15">-----Permanent address------</p></td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;">
<select name="vpermacountry" value="${list.getVpermacountry() }" id="vpermacountry" >
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr>
<tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="vpermastate" value="${list.getVpermastate() }"  id="vpermastate" onchange="setStatesp();">
 <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="vpermacity"  value="${list.getVpermacity() }"  id="vpermacity" onchange="setCitiesp();">
  <option value="">Please select a State</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">Town:</td>
<td style="text-align: left;">
<select name="vpermatown" value="${list.getVpermatown()}"  id="vpermatown">
  <option value="">Please select a State</option>
</select>
</td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Voter Address</p></td>
<td><input  type="text"  value="${list.getVpermaaddress()}" name="vpermaaddress"  ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><input type="text" name="vpermapincode"  value="${list.getVpermapincode()}" ></td>
</tr>
<tr>

<tr>
<td><p class="nospace btmspace-15">Differently Challenged</p></td>
<td><input type="radio" name="vpwdstatus " value="Yes" size="10"><p class="nospace btmspace-15">Yes</p>
<input type="radio" name="vpwdstatus" value="No" size="10"><p class="nospace btmspace-15">No</p>
</tr>

<tr>
<td><p class="nospace btmspace-15">PwdUdId No</p></td>
<td><input type="text" name="vpwdudidno"  value="${list.getVpwdudidno()}" ></td>
</tr>
<!-- 
<tr>
<th><p class="nospace btmspace-15">PwdUdIdDoc</p></td>
<td><input type="file" name="vpwddoc"  value="${list.getVpwddoc()}" ></td>
</tr>
-->
<tr>
<td><p class="nospace btmspace-15">Security Question</p></td>
<td><select name="vsecurityQues" value="${list. getVsecurityQues()}">
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
 </select></td>

</td></tr>

<tr><td><p class="nospace btmspace-15">Answer</p></td>
<td align="right"><input type="text" name="vsecurityAnswer"  value="${list.getVsecurityAnswer()}"  size="50"></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Email Id</p></td>
<td><input type="text" name="vemailId"  value="${list.getVemailId()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Password</p></td>
<td><input type="text" name="vpassword"  value="${list.getVpassword()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Re-password</p></td>
<td><input type="text" name="vrepassword"  value="${list.getVrepassword()}" ></td>
</tr>
 	 <tr><td></td><td>
 <button  align="left"type="submit" value="submit">Submit</button></td></tr>
      </table>
 	</tr>




        </table>
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