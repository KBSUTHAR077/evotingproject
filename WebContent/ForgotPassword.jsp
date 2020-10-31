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
div.transbox select {
  margin: 5%;
  font-weight: bold;
  color: #4682b4;
}

div.transbox textbox {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}
</style>

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
    <h6 class="heading">FORGOT PASSWORD !! !!</h6>
     </article>

      <div class="transbox">
       <div class="three_quarter first">
      <h1 class="heading"> FORGOT PASSWORD !! !!</h1>
		<body onload="document.forgotpassword.name.focus();">
	
	   <div class="content1">

			 <form action="ForgotPasswordServlet" method="post" name="forgotpassword" autocomplete="off">
				<table >
					<tr height="45px">
						<th style="text-align:center;font-size:17;">User Name:</th>
					</tr>
							
					<tr  height="50px">	
						 <td><p class="nospace btmspace-15"><input class="btmspace-15" type="text" name="fname" size="40"style="height:20pt;margin-left:60px;" required></p></td>
					</tr>
					
					<tr height="45px">
						<th style="text-align:center;font-size:17;">Email Id:</th>
					</tr>
							
					<tr  height="50px">	
						 <td><p class="nospace btmspace-15"><input type="text" name="email" size="40"style="height:20pt;margin-left:60px;" required></p></td>
					</tr>
					
					<tr height="45px">
						<th style="text-align:center;font-size:17;">Secret Question:</th>
					</tr>
							
					<tr  height="50px">	
						<td>
						<select name="secretQuestion" style="height:20pt;"required>
						<option>--------------------------------------SELECT--------------------------------------------</option>
						<option value="What was the name of your elementary / primary school?">
						What was the name of your elementary / primary school?</option>
						<option value="In what city or town did your mother and father meet?">
						In what city or town did your mother and father meet?</option>
						<option value="What is the last name of the teacher who gave you your first failing grade?">
						What is the last name of the teacher who gave you your first failing grade?</option>
						<option value="What is the name of your favorite childhood friend?">
						What is the name of your favorite childhood friend?</option>
						<option value="What is your favroite company you want to work?">
						What is your favorite company you want to work?</option>
						<option value="what is your pet animal name?">
						What is your pet animal name?</option>
 						<option value="what is your class Teacher name">
 						What is your class Teacher name?</option>
						</select>
						
					    </td>
					</tr>
					
					<tr height="45px">
						<th style="text-align:center;font-size:17;">Secret Answer:</th>
					</tr>
							
					<tr  height="50px">	
					<td><p class="nospace btmspace-15"><input type="text" name="secretAnswer" size="40"style="height:20pt;margin-left:60px;"required></p></td>
					</tr>
							
					<tr  height="45px">
						 <td>
						  <p class="nospace btmspace-15"><input type="submit" style="height:22pt;margin-left:170px;width:100px;"value="LOGIN" ></p></td>
					</tr>
				</table>
			</form>
	</div> <!--  content div-->
		</body></div></div></div>	  
			</div><!--  site_content div-->
			


</body>
</html>