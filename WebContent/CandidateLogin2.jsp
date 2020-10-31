<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		  <li><a href="CanLogout">Logout</a></li>
          <li><a href="#">Register</a></li>
          <li> ${canfirstname.getCanfirstname()}</li>
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
      
    
      <    <!-- ################################################################################################ -->
<div class="two_third">
 <div class="background">
      <div class="transbox">
        <h6  id="Register11"> <p class="nospace btmspace-15">CANDIDATES REGISTRATION  FORM</p></h6>
        <p class="nospace btmspace-15">This Registration Form is registered by candidate under the supervision of Election Commissioner</p>
        

          <fieldset>
            <legend>REGISTER</legend>
            
            <h2><p class="nospace btmspace-15">Qualifications to be a NOMINEE/CANDIDATE</p></h2>
            <ul class="square-listing">
<li>
		<p class="nospace btmspace-15">To be eligible to be candidate at  election in any constituency, your name must be in the latest certified register of nominations for that elections.</p>
</li>
<li>
<p class="nospace btmspace-15">A Member of Legislative Assembly (MLA) is a representative elected by the voters of an electoral district (constituency) to the Legislature of a State in the Indian system of government. Each state has between seven and nine MLAs for every Member of Parliament (MP) that it has in the Lok Sabha.</p></li>
</li>
<li><p class="nospace btmspace-15"> must not less than twenty five years of age on the date of scrutiny of nominations [Article 173b) of the Constitution, section 4(b) of the Government of Union Territories Act, 1963 and section 4(b) of the Government of National Capital Territory of Delhi Act, 1991 read with section 36(2) (a) of the Representation of the People Act, 1951];
</p></li>

<li><p class="nospace btmspace-15">Legislative Assembly or the lower house of state legislature is the main law-making body at the state level. The Members of Legislative Assembly (MLAs) are democratically elected representative of the electorates. For every Lok Sabha MP from the state, there are between four and nine MLAs. An individual must fulfill a certain set of criteria to become eligible for holding the position of an MLA.</p></li>
<li><p class="nospace btmspace-15">It's to be noted that an MLA is elected by the people of a particular constituency and he/she represents those electorates in the legislative Assembly. MLAs enjoy the same position in the state as MPs on a national level.</p></li>
<li><p class="nospace btmspace-15">The Supreme Court recently ruled that the "charge-sheeted MPs and MLAs, on conviction for offences, will be immediately disqualified from holding membership of the House without being given three months time for appeal", According to the Bench of justices, the Section 8 (4) of the Representation of the People Act is unconstitutional since it gives protection to MPs and MLAs and allows them to continue in office even after conviction if they appeal before a higher court within three months. The Act has been misused by the convicted legislators as they could file an appeal against their convictions and get a stay on the sentence.</p></li>
<li><p class="nospace btmspace-15">While striking down this section, the bench pointed out the existing dichotomy  while convicted individuals could be disqualified from contesting elections, yet they are allowed to remain the Members of Parliament and State Legislatures. As per the apex court verdict, if an MLA is convicted of any offence (and sentenced to imprisonment) under Sections 8 (1) (2) and (3), he/she must be disqualified "from the date of conviction". The court also ruled that the MLA will remain disqualified for "a further period of six years since his release".</p></li>
 	<li><p class="nospace btmspace-15">
6. Correction of name, etc, in electoral roll. In the first place, you must see that your name has been correctly registered in the electoral roll. If there is any mistake in the spelling or in the description of your name or your father's name or in your address or in any other respect, you must take immediate steps to get the mistake corrected. Your attention in this connection is invited to paragraph 8 of chapter I. If you do not get the mistake rectified in time, then at the time of scrutiny of nomination papers, other contestants may raise objections which may even go against you. To be on the safe side, you may even consult your lawyer.
</p></li>
</ul>
 
</div>
          </fieldset>
        </form>
        </div>
        </div><!-- vote by city   
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