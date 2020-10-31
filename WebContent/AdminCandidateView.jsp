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
              		<li><a href="AdminViewServlet">Admin Profile</a></li>
          			<li><a href="#CMlist">View/delete </a></li>
         		 </ul>
         
           <li><a href="AdminVoterView">Voters Profile</a></li>
           		<ul>
           			<li><a href="#Selection">Add voters</a></li>
         			<li><a href="#CMlist">View/delete </a></li>
          		</ul>
          		
          <li><a href="AdminCandidateView">Candidate Profile</a></li>
           		<ul>
           			<li><a href="#Selection">Add voters</a></li>
         			<li><a href="#CMlist">View/delete </a></li>
          		</ul>
          		<li><a href="AdminPartyView">Party view</a></li>
           		<ul>
           			<li><a href="AdminPartyRegistration.jsp">Register voters</a></li>
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
      <div style="height:500px;width:900px;border:solid 2px orange;overflow:scroll;overflow-y:scroll;overflow-x:scroll;">
      
      <frameset>
      <form  action="AdminCandidateView" >
<table border="0" cellpadding="5" align="left" border:solid 2px orange; bg-color:solid 2px orange>
     
     <table border="1" cellpadding="10">
<tr>
<th gcolor="#CC3333" width="123" height="64" scope="col">Id</th>
<th>Registered</th>
<th>Nomination Status</th>
<th>NOMINATION No.</th>
<th>First Name</th>
<th>Middle Name</th>
<th>Last Name</th>
<th>Gender</th>
<th>Marital Status</th>
<th>Father's Name</th>
<th>Mother's Name</th>
<th>Wife's Name</th>
<th>Husband's Name</th>
<th>Gaurdian's Name</th>
<th>Permanentcountry</th>
<th>Permanent State</th>
<th>Permanent city</th>
<th>Permanent Town</th>
<th>Permanent Address</th>
<th>Permanent Pincode</th>
<th>Corressponding Country</th>
<th>Corressponding State</th>
<th>Corressponding city</th>
<th>Corressponding Town</th>
<th>Corressponding Address</th>
<th>Corressponding Pincode</th>
<th>Occupation Status</th>
<th>Occupation Doc</th>
<th>Occupation Designation</th>
<th>Age</th>
<th>Dob</th>
<th>Adhaar No</th>
<th>Adhaar doc</th>
<th>Pan No</th>
<th>Pan Doc</th>
<th>Photo</th>
<th>Mobile</th>
<th>Pwd Status</th>
<th>Pwd UDID No</th>
<th>Pwd Doc</th>
<th>Party Id</th>
<th>Party Name</th>
<th>Party Nominated country</th>
<th>Party Nominated State</th>
<th>Party Nominated City</th>
<th>Party Nominated town</th>
<th>Party Nominated Pincode</th>
<th>Criminal Status</th>
<th>Criminal Record details</th>
<th>Criminal Doc</th>
<th>Credit Status</th>
<th>Credit Relation</th>
<th>Credit Name</th>
<th>Credit party Id</th>
<th>Credit Party Name</th>
<th>Credit Designation</th>
<th>Security Question</th>
<th>Security Answer</th>
<th>Email Id</th>
<th>Password</th>
<th>Repassword</th>
<th>Cancel Registration</th>
<th>Cancel Registration Details</th>
<th>CancelRegistration Doc</th>

</tr>
<c:forEach items="${sessionScope.list}" var="i">

<tr><td><p class="nospace btmspace-15">${i. canId }</p></td>
    <td>${i. canStatus1}</td>
    <td>${i. canStatus2}</td>
    <td>${i. canNominationId}</td>
 	<td>${i. canfirstname}</td>
 	<td>${i. canmiddlename}</td>
 	<td>${i. canlastname}</td>
 	<td>${i. cangender}</td>
 	<td>${i. canmaritalstatus}</td>
 	<td>${i. canfathername}</td>
 	<td>${i. canmothername}</td>
 	<td>${i. canwifename}</td>
 	<td>${i. canhusbandname}</td>
 	<td>${i. cangaurdianname}</td>
 	<td>${i. canpermacountry}</td>
 	<td>${i. canpermastate}</td>
 	<td>${i. canpermacity}</td>
 	<td>${i. canpermatown}</td>
 	<td>${i. canpermaaddress}</td>
 	<td>${i. canpermapincode}</td>
 	<td>${i. cancorrescountry}</td>
 	<td>${i. cancorresstate}</td>
 	<td>${i. cancorrescity}</td>
 	<td>${i. cancorrestown}</td>
 	<td>${i. cancorresaddress}</td>
 	<td>${i. cancorrespincode}</td>
 	<td>${i. canoccupationstatus}</td>
 	<td>${i. canoccupationdoc}</td>
 	<td>${i. candesignation}</td>
 	<td>${i. canage}</td>
 	<td>${i. candob}</td>
 	<td>${i. canadharno}</td>
 	<td>${i. canadhardoc}</td>
 	<td>${i. canpanno}</td>
 	<td>${i. canpandoc}</td>
 	<td><img src="AdminImage?adminPhoto=${i. canphoto}"  style="width: 150px;height:150px; "></td>
 	<td>${i. canmob}</td>
 	<td>${i. canpwdstatus}</td>
 	<td>${i. canpwdudidno}</td>
 	<td>${i. canpwddoc}</td>
 	<td>${i. canPartyId}</td>
 	<td>${i. canPartyName}</td>
 	<td>${i. canNomiAreaCountry}</td>
 	<td>${i. canNomiAreaState}</td>
 	<td>${i. canNomiAreaCity}</td>
 	<td>${i. canNomiAreaTown}</td>
 	<td>${i. canNomiAreaPincode}</td>
 	<td>${i. canCriminalStatus}</td>
 	<td>${i. canCriminalRecord}</td>
 	<td>${i. canCriminalDoc}</td>
 	<td>${i. canCreditStatus}</td>
 	<td>${i. canCreditRelation}</td>
 	<td>${i. canCreditName}</td>
 	<td>${i. canCreditPartyId}</td>
 	<td>${i. canCreditPartyName}</td>
 	<td>${i. canCreditDesignation}</td>
 	<td>${i. canSecurityQues}</td>
 	<td>${i. canSecurityAnswer}</td>
 	<td>${i. canEmailId}</td>
 	<td>${i. canPassword}</td>
 	<td>${i. canRepassword}</td>
 	<td>${i. canCancelRegistration}</td>
 	<td>${i. canCancelOtherDetails}</td>
 	<td>${i. canCancelRegistrationDoc}</td>
	
	
 	<td><a href="AdminUpdateCandidate1?canId=${i.canId}">Update</a></td>
 	<td><a href="DeleteCandidate?canId=${i.canId}">Delete</a></td>
 	
 	</tr>


</c:forEach>

        </table>
      </form>
      
      </frameset>
    </div>
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