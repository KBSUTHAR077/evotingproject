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

</head><!--  
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
});

</script>-->

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
          <li>  ${canfirstname}</li>
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
      <h2 class="heading">Candidate Logged in </h2>
      <nav>
        <ul class="nospace inline pushright uppercase">
          <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#castdetails">Voting Purpose</a></li>
          <li><a href="CandidateUpdate?canId=${canfirstname.getCanId()}">Profile View/Update</a></li>
          <li><a href="CandidateViewForm?canId=${canfirstname.getCanId()}">Profile view</a></li>
          <li><a href="#">Cancel Candidate Registration</a></li>
          <li><a href="#">nomination  Process Details</a></li>
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
        <form action="SaveCanServlet" method="post">

          <fieldset>
            <legend>Login:</legend>
            
 <body>
<form action="CandidateViewForm" >  
<table border="0" cellpadding="5">
<tr  class="transbox">
<tr>
<td><p class="nospace btmspace-15">ID</p></td>
<td><p class="nospace btmspace-15">${list.getCanId()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Registered Status :</p></td>
<td><p class="nospace btmspace-15">${list.getCanStatus1()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Nomination Status :</p></td>
<td><p class="nospace btmspace-15">${list.getCanStatus2()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Nomination Id :</p></td>
<td><p class="nospace btmspace-15">${list.getCanNominationId()}</p></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">First Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanfirstname()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Middle Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanmiddlename()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Last Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanlastname()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gender</p></td>
<td><p class="nospace btmspace-15">${list.getCangender()}</p>
</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">RelationShip Status</p></td>
<td><p class="nospace btmspace-15">${list.getCanmaritalstatus()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Father's Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanfathername()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mother's Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanmothername()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Wife's Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanwifename()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Husband's Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanhusbandname()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Gaurdian Name</p></td>
<td><p class="nospace btmspace-15">${list.getCangaurdianname()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Age</p></td>
<td><p class="nospace btmspace-15">${list.getCanage()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">DOB</p></td>
<td><p class="nospace btmspace-15">${list.getCandob()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Occupation</p></td>
<td><p class="nospace btmspace-15">${list.getCanoccupationstatus()}</p></td>
</tr>
<!-- 
<tr>
<td><p class="nospace btmspace-15">Occupation Doc</p></td>
<td><p class="nospace btmspace-15">${list.getCanoccupationdoc()}</p></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Designation</p></td>
<td><p class="nospace btmspace-15">${list.getCandesignation()}</p></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Adhar No</p></td>
<td><p class="nospace btmspace-15">${list.getCanadhardoc()}</p></td>
</tr>
<!-- 
<tr>
<td><p class="nospace btmspace-15">Adhar Doc</p></td>
<td><p class="nospace btmspace-15">${list.getCanadharno()}</p></td>
</tr>
  -->
<tr>
<td><p class="nospace btmspace-15">Pan No</p></td>
<td><p class="nospace btmspace-15">${list.getCanpanno()}</p></td>
</tr>
<!-- 
<tr>
<td><p class="nospace btmspace-15">Pan Doc</p></td>
<td><p class="nospace btmspace-15">${list.getCanpandoc()}</p></td>
</tr>
 -->
<tr>
<td><p class="nospace btmspace-15">Photo</p></td>
<td><p class="nospace btmspace-15"><img src="AdminImage?adminPhoto=${list.getCanphoto()}" style="width: 150px;height:150px; "></p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Mobile No</p></td>
<td><p class="nospace btmspace-15">${list.getCanmob()}</p></td>
</tr>
<tr>
<td><p class="nospace btmspace-15">-----Correspondance address------</p></td>


<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCancorrescountry()}</p></td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCancorresstate()}</p>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCancorrescity()}</p></td>
</tr>
<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><p class="nospace btmspace-15">${list.getCancorrespincode()}</p></td>
</tr>
<tr>

<tr>
<td><p class="nospace btmspace-15">-----Permanent address------</p></td>

<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCanpermacountry()}</p></td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCanpermastate()}</p></td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCanpermacity()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pincode </p></td>
<td><p class="nospace btmspace-15">${list.getCanpermapincode()}</p></td>
</tr>
<tr>

<tr>
<td><p class="nospace btmspace-15">Differently Challenged</p></td>
<td><p class="nospace btmspace-15">${list.getCanpwdstatus()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">PwdUdId No</p></td>
<td><p class="nospace btmspace-15">${list.getCanpwdudidno()}></p></td>
</tr>
<!--  
<tr>
<td><p class="nospace btmspace-15">PwdUdIdDoc</p></td>
<td><p class="nospace btmspace-15">${list.getCanpwddoc()}</p></td>
</tr>
 -->
<tr>
<td><p class="nospace btmspace-15">Criminal Record</p></td>
<td><p class="nospace btmspace-15">${list.getCanCriminalStatus()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Criminal Record Detail</p></td>
<td><p class="nospace btmspace-15">${list.getCanCriminalRecord()}</p></td>
</tr>
<!--  
<tr>
<td><p class="nospace btmspace-15">Criminal Doc</p></td>
<td><p class="nospace btmspace-15">${list.getCanCriminalDoc()}</p></td>
</tr>
-->
<tr>
<tr>
<td><p class="nospace btmspace-15">Party Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanPartyName()}</p></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">-----Candidate Nominated Area Details------</p></td>

<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">Country:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCanNomiAreaCountry()}</p></td>
</tr>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">State:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCanNomiAreaState()}</p>
</td>
</tr><tr>
<td style="text-align: left;"><p class="nospace btmspace-15">City:</p></td>
<td style="text-align: left;"><p class="nospace btmspace-15">${list.getCanNomiAreaCity()}</p>
</td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Pincode</p></td>
<td><p class="nospace btmspace-15">${list.getCanNomiAreaPincode()}</p></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Candidate Credit Point<</td>
<td><p class="nospace btmspace-15">${list.getCanCreditStatus()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Credit Full Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanCreditName()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Candidate Credit Relation</p></td>
<td><p class="nospace btmspace-15">${list.getCanCreditRelation()}</p></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Credit Party Name</p></td>
<td><p class="nospace btmspace-15">${list.getCanCreditPartyName()}</p></td>
</tr>


<tr>
<td><p class="nospace btmspace-15">Credit Designation</p></td>
<td><p class="nospace btmspace-15">${list.getCanCreditDesignation()}</p></td>
</tr>



<tr>
<td><p class="nospace btmspace-15">Security Question</p></td>
<td><p class="nospace btmspace-15">${list.getCanSecurityQues()}</p></td>

</td></tr>

<tr><td><p class="nospace btmspace-15">Answer</p></td>
<td align="right"><p class="nospace btmspace-15">${list.getCanSecurityAnswer()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Email Id</p></td>
<td><p class="nospace btmspace-15">${list.getCanEmailId()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Password</p></td>
<td><p class="nospace btmspace-15">${list.getCanPassword()}</p></td>
</tr>

<tr>
<td><p class="nospace btmspace-15">Re-password</p></td>
<td><p class="nospace btmspace-15">${list.getCanRepassword()}</p></td>
</tr>



<tr>
<td></td>
<td align="center">
<a href="CandidateUpdate?canId=${canfirstname.getCanId()}"><p class="nospace btmspace-15">Update</p></a></td>
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