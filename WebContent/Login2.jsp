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
      
    
      <div class="one_third">
        <h6 class="heading" id="castdetails">Details</h6>
        <h4> Welcome to vote!!</h4>
        <p class="nospace btmspace-30">Enter details for the verification in order to cast vote</p>
        <form action="VotingLog"  method="post">
          <fieldset>
            <legend>Login:</legend>
            
             <input class="btmspace-15" type="text" name="vfirstname" placeholder="Firstname">
            <input class="btmspace-15" type="text"  name="vlastname" placeholder="LastName">
            <input class="btmspace-15" type="text"  name="vid" placeholder="Voter ID">
            <input class="btmspace-15" type="text"  name="vepicNo" placeholder="Voter Epic No">
             <input class="btmspace-15" type="text" name="vadharno" placeholder="Adhar No">
            <input class="btmspace-15" type="text"  name="vpanno" placeholder="Pan No">
             <!--  <input class="btmspace-15" type="vsecurityQues" value=""  name="vsecurityQues" placeholder="vsecurityQues">-->
             <select name="vsecurityQues" >
				<option value="-1" selected>select..</option>
 				<option value="what is your pet animal name?">What is your pet animal name?</option>
 				<option value="what is your class Teacher name">What is your class Teacher name?</option>
 				<option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
			</select>
              <input class="btmspace-15" type="text"  name="vsecurityAnswer" placeholder="vsecurityAnswer">
               <input class="btmspace-15" type="password"  name="vpassword" placeholder="vpassword">
          <!--   <fieldset><select name="vsecurityQues" >
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select>
            </fieldset>
            <input type="text" name="vsecurityAnswer" size="40" placeholder="Security Answer">
            <input type="password" name="vpassword" placeholder="Password"> -->
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