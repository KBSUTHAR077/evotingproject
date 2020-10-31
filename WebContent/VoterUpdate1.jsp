<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
          <li>  ${VfName.getVfirstname()}</li>
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
        <form action="VoterUpdate" method="post">

          <fieldset>
            <legend>Login:</legend>
            
 <body>
<form action="VoterUpdate" method="post">  
<table border="0" cellpadding="5">
<tr  class="transbox">
<tr>
<td><p class="nospace btmspace-15">ID</p></td>
<td><input type="text" name="vid" value="${list.getVid()}"></td>
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

<tr>
<td><p class="nospace btmspace-15">Occupation Doc</p></td>
<td><input type="file" name="voccupationdoc"  value="${list.getVoccupationdoc()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Designation</p></td>
<td><input type="text" name="vdesignation"  value="${list.getVdesignation()}" ></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Adhar No</p></td>
<td><input type="text" name="vadharno"  value="${list.getVadharno()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Adhar Doc</p></td>
<td><input type="file" name="vadhardoc" value="${list.getVadhardoc()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pan No</p></td>
<td><input type="text" name="vpanno"  value="${list.getVpanno()}" ></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pan Doc</p></td>
<td><input type="file" name="vpandoc"  value="${list.getVpandoc()}"  ></td>
</tr>

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

<tr>
<th><p class="nospace btmspace-15">PwdUdIdDoc</p></td>
<td><input type="file" name="vpwddoc"  value="${list.getVpwddoc()}" ></td>
</tr>

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


<tr>
<td></td>
<td align="center"><input type="submit" value="Next"></td>
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