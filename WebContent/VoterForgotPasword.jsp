<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellpadding="20">
<tr ><td colspan="2">Login <table>
<tr><td>&nbsp</td>  <td></td>
<td align="left">forgot password</td></table>
</td>
</tr>


<tr>
<td rowspan="4">
<table>
<tr>
<th>FORGOT PASSWORD</th></tr>
<tr><td>Voter's First Name</td>
<td><input type="text" name="vfirstname"></td></tr>
<tr><td>Voter's Middle Name</td>
<td><input type="text" name="vmiddlename"></td></tr>
<tr><td>Voter's Last Name</td>
<td><input type="text" name="vlastname"></td></tr>
<tr><td>Voter Id (Epic No.)</td>
<td><input type="text" name="vid"></td></tr>
<tr><td>Adhar Card No:</td>
<td><input type="text" name="vid"></td></tr>
<tr><td>Pan Card No.:</td>
<td><input type="text" name="vid"></td></tr>

<tr><td>Registered Mobile No.:</td>
<td><input type="tel" name="vmob"></td></tr>
<tr><td>Email Id:</td>
<td><input type="TEXT" name="vemailId : String"></td></tr>
<tr>
<td>Security Question</td>
<td><select name="vsecurityQues" >
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select></td>
</td></tr>
<tr><td></td>
<td align="right"><input type="text" name="canSecurityAnswer" size="40"></td>
</tr>


<tr><td><input type="submit" value="SUBMIT"></td></tr>


</table>

</table>
</body>
</html>