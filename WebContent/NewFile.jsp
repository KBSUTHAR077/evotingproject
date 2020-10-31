<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="myform1" action="SaveServlet" method="post">
<table border="0" cellpadding="5" align="left">
<tr>
<td><span class="required">*</span>First Name</td></tr><br><tr>
<td><input style="height:30px;  type="text"  name="vfirstname" size="50" required></td>
</tr>

<tr>
<td>Middle Name</td><br></tr><br><tr>
<td><input style="height:30px; type="text" name="vmiddlename" size="50" ></td>
</tr>

<tr>
<td><span class="required">*</span>Last Name</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vlastname" size="50"  required></td>
</tr>

<tr>
<td><span class="required">*</span>Gender</td></tr><br><tr>
<td><input type="radio" name="vgender" id="male" value="male" size="10" required>Male
<input type="radio" name="vgender" id="female" value="female" size="10">Female
<input type="radio" name="vgender" id="other" value="other" size="10">Other</td>
</tr>

<tr>
<td><span class="required">*</span>RelationShip Status</td></tr><br><tr>
<td><input type="radio" name="vmaritalstatus" id="unmarried" value="unmarried" size="10" onmouseover="msg()" required>Unmarried
<input type="radio" name="vmaritalstatus" id="married" value="married" size="10" onmouseover="msg()">married</td>
</tr>

<tr>
<td>Father's Name</td></tr><br><tr>
<td><input style="height:30px; type="text" id="vfathername" name="vfathername" size="50"  onmouseover="msg()"></td>
</tr>

<tr>
<td>Mother's Name</td></tr><br><tr>
<td><input style="height:30px; type="text"  id="vmothername" name="vmothername" size="50"  onmouseover="msg()"></td>
</tr>

<tr>
<td>Wife's Name</td></tr><br><tr>
<td><input style="height:30px; type="text" id="vwifename" name="vwifename"></td>
</tr>

<tr>
<td>Husband's Name</td></tr><br><tr>
<td><input style="height:30px; type="text" id="vhusbandname"  name="vhusbandname" size="50" ></td>
</tr>

<tr>
<td>Gaurdian's Name</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vgaurdianname" size="50" ></td>
</tr>

<tr>
<td></span>Age</td></tr><br><tr>
<td><input style="height:30px; type="number" name="vage" size="50" required></td>
</tr>

<tr>
<td>DOB</td></tr><br>
<tr>
<td><input style="height:30px; type="date" name="vdob" size="50" required></td>
</tr>

<tr>
<td>Occupation</td></tr><br><tr>
<td><input type="radio" name="voccupatiostatus" value="Private" size="10" required>Private
<input type="radio" name="voccupatiostatus" value="Government" size="10">Government
<input type="radio" name="voccupatiostatus" value="Student" size="10">Student
<input type="radio" name="voccupatiostatus" value="Other" size="10">Other</td>
</tr>

<tr>
<td>Occupation Doc</td></tr><br><tr>
<td><input type="file" name="voccupationdoc" size="50" required></td>
</tr>

<tr>
<td>Designation</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vdesignation" size="50" ></td>
</tr>

<tr>
<td><span class="required">*</span>Adhar No</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vadharno" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Adhar Doc</td></tr><br><tr>
<td><input style="height:30px;  maxlength="12" type="file" name="vadhardoc" size="50" required></td>
</tr>

<tr>
<th><span class="required">*</span>Pan No</th></tr><br><tr>
<td><input style="height:30px; type="text" name="vpanno" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Pan Doc</td></tr><br><tr>
<td><input style="height:30px; type="file" name="vpandoc" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Photo</td></tr><br><tr>
<td><input style="height:30px; type="file" name="vphoto" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Mobile No</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vmob" size="50" required></td>
</tr>


<tr>
<td>-----Correspondance address------</td></tr>
<br><br><tr>
<td><span class="required">*</span>Country</td></tr><br><tr>
<td><select style="height:30px; Name="vcorrescountry"    required>
<option value="-1" selected>select..</option>
<option value="INDIA">India</option>
<option value="OTHER">OTHER</option>
</select></td>
</tr>

<tr>
<td><span class="required">*</span>State</td></tr><br><tr>
<td><select style="height:30px; Name="vcorresstate" required>
<option value="-1" selected>select..</option>
<option value="Andaman & Nicobar Islands">Andaman & Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">BIHAR</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhatisgarh">Chhatisgarh</option>
<option value="Goa">GOA</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu & Kashmir">Jammu & Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Mumbai">MUMBAI</option>
<option value="Maharashtra">Maharashtra</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Odisha (Orissa)">Odisha (Orissa)</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
</select></td>
</tr>

<tr>
<td><span class="required">*</span>City</td></tr><br><tr>
<td><select name="vcorrescity" required>
 <option value="-1" selected>select..</option>
 <option value="Kanpur">Kanpur</option>
 <option value="Gaziabad">Gaziabad</option>
 <option value="Lucknow">Lucknow</option>
 <option value="Agra">Agra</option>
 <option value="Varanasi">Varanasi</option>
 <option value="Allahabad">Allahabad</option>
 <option value="Kolkata">Kolkata</option>
 <option value="Siliguri">Siliguri</option>
 <option value="Durgapur">Durgapur</option>
 <option value="Asansol">AsanSol</option>
 <option value="Bardhaman">Bardhaman</option>
 <option value="Kharagpur">Kharagpur</option>
 <option value="Chennai">Chennai</option>
 <option value="Coimbatore">Coimbatore</option>
 <option value="Tiruchirapalli">Tiruchirapalli</option>
 <option value="Vellore">Vellore</option>
 <option value="Thoothkudi">Thoothkudi</option>
 <option value="Jodhpur">Jodhpur</option>
 <option value="Kota">Kota</option>
 <option value="Bikaneri">Bikaneri</option>
 <option value="Ajmer">Udaipur</option>
 <option value="Alwar">Alwar</option>
 <option value="Ludhiana">Ludhiana</option>
 <option value="Amritsar">Amritsar</option>
 <option value="Jalandhar">Jalandhar</option>
 <option value="Bhatinda">Bhatinda</option>
 <option value="Bhubaneshwar">Bhubaneshwar</option>
 <option value="Rourkela">Rourkela</option>
 <option value="cuttack">cuttack</option>
 <option value="puri">puri</option>
 <option value="Bengaluru">Bengaluru</option>
 <option value="Mysore">Mysore</option>
 <option value="Mangalore">Mangalore</option>
 <option value="Belgaum">Belgaum</option>
 <option value="Gulbarga">Gulbarga</option>
 <option value="Davanagere">Davanagere</option>
  <option value="Bellary">Bellary</option>
 <option value="Bijapur">Bijapur</option>
 <option value="Shimoga">Shimoga</option>
 <option value="Tumkur">Tumkur</option>
 <option value="Kochi">Kochi</option>
 <option value="Kozhikode">Kozhikode</option>
  <option value="Thrissur">Thrissur</option>
 <option value="Malappuram">Malappuram</option>
 <option value="Thiruvananthapuram">Thiruvananthapuram</option>
 <option value="Kannur">Kannur</option>
 <option value="Kollam">Kollam</option>
 <option value="Cherthala">Cherthala</option>
  <option value="Kayamkulam">Kayamkulam</option>
 <option value="Kottayam">Kottayam</option>
 <option value="Indore">Indore</option>
 <option value="Bhopal">Bhopal</option>
 <option value="Jabalpur">Jabalpur</option>
 <option value="Gwalior">Gwalior</option>
  <option value="Ujjain">Ujjain</option>
 <option value="Sagar">Sagar</option>
 <option value="Dewas">Dewas</option>
 <option value="Satna">Satna</option>
 <option value="Ratlam">Ratlam</option>
 <option value="Mumbai">Mumbai</option>
  <option value="Pune">Pune</option>
 <option value="Nagpur">Nagpur</option>
 <option value="Nashik">Nashik</option>
 <option value="Vasai-Virar">Vasai-Virar</option>
 <option value="Aurangabad">Aurangabad</option>
 <option value="Solapur">Solapur</option>
  <option value="Bhiwandi">Bhiwandi</option>
 <option value="Amravati">Amravati</option>
 <option value="Jamshedpur">Jamshedpur</option>
 <option value="Dhanbad">Dhanbad</option>
 <option value="Ranchi">Ranchi</option>
 <option value="Bokaro Steel City">Bokaro Steel City</option>
 <option value="Deoghar">Deoghar</option>
 <option value="Phusro">Phusro</option>
 <option value="Hazaribag">Hazaribag</option>
 <option value="Giridih">Giridih</option>
 <option value="Ramgarh Cantonment">Ramgarh Cantonment</option>
 <option value="Medininagar">Medininagar</option>
 <option value="Chirkunda">Chirkunda</option>
 <option value="Srinagar">Srinagar</option>
 <option value="Jammu">Jammu</option>
 <option value="Anantnag">Anantnag</option>
 <option value="Udhampur">Udhampur</option>
 <option value="Baramula">Baramula</option>
 <option value="Sopore">Sopore</option>
 <option value="Kathua">Kathua</option>
 <option value="Bandipura">Bandipura</option>
 <option value="Leh">Leh</option>
 <option value="Baddi">Baddi</option>
 <option value="Chamba">Chamba</option>
 <option value="Dharmsala">Dharmsala</option>
 <option value="Kullu">Kullu</option>
 <option value="Mandi">Mandi</option>
 <option value="Nahan">Nahan</option>
 <option value="Paonta">Paonta</option>
 <option value="Shimla">Shimla</option>
 <option value="Solan">Solan</option>
 <option value="Sundarnagar">Sundarnagar</option>
 
</select></td>
</tr>

<tr>
<td>Pincode</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vcorrespincode" size="50" required></td>
</tr>
<tr>

<tr>
<td>-----Permanent address------</td></tr>
<br><br><tr>
<td><span class="required">*</span>Country</td></tr><br><tr>
<td><select Name="vpermacountry" required>
<option value="-1" selected>select..</option>
<option value="INDIA">India</option>
<option value="OTHER">OTHER</option>
</select></td>
</tr>

<tr>
<td><span class="required">*</span>State</td></tr><br><tr>
<td><select Name="vpermastate" required>
<option value="-1" selected>select..</option>
<option value="Andaman & Nicobar Islands">Andaman & Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">BIHAR</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhatisgarh">Chhatisgarh</option>
<option value="Goa">GOA</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu & Kashmir">Jammu & Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Mumbai">MUMBAI</option>
<option value="Maharashtra">Maharashtra</option>
<option value="New Delhi">NEW DELHI</option>
<option value="Odisha (Orissa)">Odisha (Orissa)</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>

</select></td>
</tr>

<tr>
<td><span class="required">*</span>City</td></tr><br><tr>
<td><select name="vpermacity ">
 <option value="-1" selected>select..</option>
 <option value="Kanpur">Kanpur</option>
 <option value="Gaziabad">Gaziabad</option>
 <option value="Lucknow">Lucknow</option>
 <option value="Agra">Agra</option>
 <option value="Varanasi">Varanasi</option>
 <option value="Allahabad">Allahabad</option>
 <option value="Kolkata">Kolkata</option>
 <option value="Siliguri">Siliguri</option>
 <option value="Durgapur">Durgapur</option>
 <option value="Asansol">AsanSol</option>
 <option value="Bardhaman">Bardhaman</option>
 <option value="Kharagpur">Kharagpur</option>
 <option value="Chennai">Chennai</option>
 <option value="Coimbatore">Coimbatore</option>
 <option value="Tiruchirapalli">Tiruchirapalli</option>
 <option value="Vellore">Vellore</option>
 <option value="Thoothkudi">Thoothkudi</option>
 <option value="Jodhpur">Jodhpur</option>
 <option value="Kota">Kota</option>
 <option value="Bikaneri">Bikaneri</option>
 <option value="Ajmer">Udaipur</option>
 <option value="Alwar">Alwar</option>
 <option value="Ludhiana">Ludhiana</option>
 <option value="Amritsar">Amritsar</option>
 <option value="Jalandhar">Jalandhar</option>
 <option value="Bhatinda">Bhatinda</option>
 <option value="Bhubaneshwar">Bhubaneshwar</option>
 <option value="Rourkela">Rourkela</option>
 <option value="cuttack">cuttack</option>
 <option value="puri">puri</option>
 <option value="Bengaluru">Bengaluru</option>
 <option value="Mysore">Mysore</option>
 <option value="Mangalore">Mangalore</option>
 <option value="Belgaum">Belgaum</option>
 <option value="Gulbarga">Gulbarga</option>
 <option value="Davanagere">Davanagere</option>
  <option value="Bellary">Bellary</option>
 <option value="Bijapur">Bijapur</option>
 <option value="Shimoga">Shimoga</option>
 <option value="Tumkur">Tumkur</option>
 <option value="Kochi">Kochi</option>
 <option value="Kozhikode">Kozhikode</option>
  <option value="Thrissur">Thrissur</option>
 <option value="Malappuram">Malappuram</option>
 <option value="Thiruvananthapuram">Thiruvananthapuram</option>
 <option value="Kannur">Kannur</option>
 <option value="Kollam">Kollam</option>
 <option value="Cherthala">Cherthala</option>
  <option value="Kayamkulam">Kayamkulam</option>
 <option value="Kottayam">Kottayam</option>
 <option value="Indore">Indore</option>
 <option value="Bhopal">Bhopal</option>
 <option value="Jabalpur">Jabalpur</option>
 <option value="Gwalior">Gwalior</option>
  <option value="Ujjain">Ujjain</option>
 <option value="Sagar">Sagar</option>
 <option value="Dewas">Dewas</option>
 <option value="Satna">Satna</option>
 <option value="Ratlam">Ratlam</option>
 <option value="Mumbai">Mumbai</option>
  <option value="Pune">Pune</option>
 <option value="Nagpur">Nagpur</option>
 <option value="Nashik">Nashik</option>
 <option value="Vasai-Virar">Vasai-Virar</option>
 <option value="Aurangabad">Aurangabad</option>
 <option value="Solapur">Solapur</option>
  <option value="Bhiwandi">Bhiwandi</option>
 <option value="Amravati">Amravati</option>
 <option value="Jamshedpur">Jamshedpur</option>
 <option value="Dhanbad">Dhanbad</option>
 <option value="Ranchi">Ranchi</option>
 <option value="Bokaro Steel City">Bokaro Steel City</option>
 <option value="Deoghar">Deoghar</option>
 <option value="Phusro">Phusro</option>
 <option value="Hazaribag">Hazaribag</option>
 <option value="Giridih">Giridih</option>
 <option value="Ramgarh Cantonment">Ramgarh Cantonment</option>
 <option value="Medininagar">Medininagar</option>
 <option value="Chirkunda">Chirkunda</option>
 <option value="Srinagar">Srinagar</option>
 <option value="Jammu">Jammu</option>
 <option value="Anantnag">Anantnag</option>
 <option value="Udhampur">Udhampur</option>
 <option value="Baramula">Baramula</option>
 <option value="Sopore">Sopore</option>
 <option value="Kathua">Kathua</option>
 <option value="Bandipura">Bandipura</option>
 <option value="Leh">Leh</option>
 <option value="Baddi">Baddi</option>
 <option value="Chamba">Chamba</option>
 <option value="Dharmsala">Dharmsala</option>
 <option value="Kullu">Kullu</option>
 <option value="Mandi">Mandi</option>
 <option value="Nahan">Nahan</option>
 <option value="Paonta">Paonta</option>
 <option value="Shimla">Shimla</option>
 <option value="Solan">Solan</option>
 <option value="Sundarnagar">Sundarnagar</option>
 
</select></td>
</tr>

<tr>
<td><span class="required">*</span>Pincode</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vpermapincode" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Differently Challenged</td></tr><br><tr>
<td><input type="radio" name="vpwdstatus " value="Yes" size="10">Yes
<input style="height:30px; type="radio" name="vpwdstatus" value="No" size="10">No
</tr>

<tr>
<td>PwdUdId No</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vpwdudidno" size="50" ></td>
</tr>

<tr>
<th>PwdUdIdDoc</td></tr><br><tr>
<td><input style="height:30px; type="file" name="vpwddoc" size="50" ></td>
</tr>

<tr>
<td><span class="required">*</span>Email Id</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vemailId" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Password</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vpassword " size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>RePassword</td></tr><br><tr>
<td><input style="height:30px; type="text" name="vrepassword" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Security Question</td></tr><br><tr>
<td><select name="vsecurityQues" required>
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select></td></tr>

<tr><td></td></tr><br><tr>
<td align="right"><span class="required">*</span><input style="height:30px; type="text" name="vsecurityAnswer" size="50" required></td>
</tr>

 
<tr>

<td><input type="button" value="click" onclick="msg()"></td>
</tr>

</table>
</form>
</body>
</html>