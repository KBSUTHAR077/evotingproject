<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title><script type="text/javascript">
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
  cntrySel = document.getElementById('cancorrescountry');
  stateList = states[cntrySel.value];
  changeSelect('cancorresstate', stateList, stateList);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('cancorrescountry');
  stateSel = document.getElementById('cancorresstate');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('cancorrescity', cityList, cityList);
}

function setStatesp() {
	  cntrySel = document.getElementById('canpermacountry');
	  stateList = states[cntrySel.value];
	  changeSelect('canpermastate', stateList, stateList);
	  setCitiesp();
	}

	function setCitiesp() {
	  cntrySel = document.getElementById('canpermacountry');
	  stateSel = document.getElementById('canpermastate');
	  cityList = cities[cntrySel.value][stateSel.value];
	  changeSelect('canpermacity', cityList, cityList);
	}

	function setStatesnominee() {
		  cntrySel = document.getElementById('canNomiAreaCountry');
		  stateList = states[cntrySel.value];
		  changeSelect('canNomiAreaState', stateList, stateList);
		  setCitiesnominee();
		}

		function setCitiesnominee() {
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
  setStates();
  setStatesp();
  setStatesnominee()
});

</script>


</head>
<body>
<form action="CandidateUpdate" method="post">
<table border="0" cellpadding="5">
<tr>
<td>First Name</td>
<td><input type="text" name="canfirstname"  value="${list.getCanfirstname()}"></td>
</tr>

<tr>
<td>Middle Name</td>
<td><input type="text" name="canmiddlename"  value="${list.getCanmiddlename()}"></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" name="canlastname" value="${list.getCanlastname()}"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="cangender" value="male" size="10" value="${list.getCangender()}">Male
<input type="radio" name="cangender" value="Female" size="10">Female
<input type="radio" name="cangender" value="Other" size="10">Other</td>
</tr>

<tr>
<td>RelationShip Status</td>
<td><input type="radio" name="canmaritalstatus" value="yes" size="10">Married
<input type="radio" name="canmaritalstatus" value="no" size="10">Unmarried</td>
</tr>

<tr>
<td>Father's Name</td>
<td><input type="text" value="${list.getCanfathername()}" name="canfathername"></td>
</tr>

<tr>
<td>Mother's Name</td>
<td><input type="text" value="${list.getCanmothername()}" name="canmothername"></td>
</tr>

<tr>
<td>Wife's Name</td>
<td><input type="text"value="${list.getCanwifename()}" name="canwifename"></td>
</tr>

<tr>
<td>Husband's Name</td>
<td><input type="text" value="${list.getCanhusbandname()}" name="canhusbandname"></td>
</tr>

<tr>
<td>Gaurdian Name</td>
<td><input type="text" value="${list.getCangaurdianname()}" name="cangaurdianname"></td>
</tr>

<tr>
<td>Age</td>
<td><input type="text" value="${list.getCanage()}" name="canage"></td>
</tr>

<tr>
<td>DOB</td>
<td><input type="date"value="${list.getCandob()}" name="candob"></td>
</tr>

<tr>
<td>Occupation</td>
<td><input type="radio" name="canoccupationstatus" value="Private" size="10">Private
<input type="radio" name="canoccupationstatus" value="Government" size="10">Government
<input type="radio" name="canoccupationstatus" value="Student" size="10">Student
<input type="radio" name="canoccupationstatus" value="Other" size="10">Other</td>
</tr>

<tr>
<td>Occupation Doc</td>
<td><input type="file" value="${list.getCanoccupationdoc()}" name="canoccupationdoc"></td>
</tr>

<tr>
<td>Designation</td>
<td><input type="text" value="${list.getCandesignation()}" name="candesignation"></td>
</tr>


<tr>
<td>Adhar No</td>
<td><input type="text" value="${list.getCanadharno()}" name="canadharno"></td>
</tr>

<tr>
<td>Adhar Doc</td>
<td><input type="file" value="${list.getCanadhardoc()}" name="canadhardoc"></td>
</tr>

<tr>
<th>Pan No</th>
<td><input type="text" value="${list.getCanpanno()}" name="canpanno"></td>
</tr>

<tr>
<td>Pan Doc</td>
<td><input type="file" value="${list.getCanpandoc()}" name="canpandoc"></td>
</tr>

<tr>
<td>Photo</td>
<td><input type="file" value="${list.getCanphoto()}" name="canphoto"></td>
</tr>

<tr>
<td>Mobile No</td>
<td><input type="text" value="${list.getCanmob()}" name="canmob"></td>
</tr>
<tr>
<td>-----Correspondance address------</td>
<!--  
<td>Country</td>
<td><select Name="cancorrescountry">
<option value="-1" selected>select..</option>
<option value="INDIA">India</option>
<option value="OTHER">OTHER</option>

</select></td>
</tr>

<tr>
<td>State</td>
<td><select Name="cancorresstate">
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
<td>City</td>
<td><select name="cancorrescity">
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
</tr> -->
<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="cancorrescountry" value="${list.getCancorrescountry()}" id="cancorrescountry" onchange="setStates();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="cancorresstate" value="${list.getCancorresstate()}" id="cancorresstate" onchange="setCities();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="cancorrescity"  value="${list.getCancorrescity()}"  id="cancorrescity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>
<tr>
<td>Pincode</td>
<td><input type="text" value="${list.getCancorrespincode()}" name="cancorrespincode"></td>
</tr>
<tr>

<tr>
<td>-----Permanent address------</td>
<!--  
<td>Country</td>
<td><select Name="Vpermacountry">
<option value="-1" selected>select..</option>
<option value="INDIA">India</option>
<option value="OTHER">OTHER</option>

</select></td>
</tr>

<tr>
<td>State</td>
<td><select Name="Vpermastate">
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
<td>City</td>
<td><select name="Vpermacity">
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
</tr>-->
<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="canpermacountry" value="${list.getCanpermacountry()}" id="canpermacountry" onchange="setStatesp();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="canpermastate" value="${list.getCanpermastate()}" id="canpermastate" onchange="setCitiesp();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="canpermacity" value="${list.getCanpermacity()}"  id="canpermacity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>

<tr>
<td>Pincode</td>
<td><input type="text" name="canpermapincode"  value="${list.getCanpermapincode()}"></td>
</tr>
<tr>

<tr>
<td>Differently Challenged</td>
<td><input type="radio" name="canpwdstatus" value="Yes" size="10">Yes
<input type="radio" name="canpwdstatus" value="No" size="10">No
</tr>

<tr>
<td>PwdUdId No</td>
<td><input type="text" name="canpwdudidno"  value="${list.getCanpwdudidno()}"></td>
</tr>

<tr>
<th>PwdUdIdDoc</td>
<td><input type="file" name="canpwddoc"  value="${list.getCanpwddoc()}"></td>
</tr>

<tr>
<td>Criminal Record</td>
<td><input type="radio" name="canCriminalStatus" value="Yes" size="10">Yes
<input type="radio" name="canCriminalStatus" value="No" size="10">No
</tr>

<tr>
<td>Criminal Record Detail</td>
<td><input type="text" name="canCriminalRecord"  value="${list.getCanCriminalRecord()}"></td>
</tr>

<tr>
<td>Criminal Doc</td>
<td><input type="file" name="canCriminalDoc"  value="${list.getCanCriminalDoc()}"></td>
</tr>

<tr>
<tr>
<td>Party Name</td>
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
<td>-----Candidate Nominated Area Details------</td>
<!--  
<td>Country</td>
<td><select Name="canpermacountry">
<option value="-1" selected>select..</option>
<option value="INDIA">India</option>
<option value="OTHER">OTHER</option>

</select></td>
</tr>

<tr>
<td>State</td>
<td><select Name="canpermastate">
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
<td>City</td>
<td><select name="canpermacity">
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
</tr>-->

<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="canNomiAreaCountry" value="${list.getCanNomiAreaCountry()}" id="canNomiAreaCountry" onchange="setStatesnominee();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="canNomiAreaState"  value="${list.getCanNomiAreaState()}" id="canNomiAreaState" onchange="setCitiesnominee();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="canNomiAreaCity"  value="${list.getCanNomiAreaCity()}" id="canNomiAreaCity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>

<tr>
<td>Pincode</td>
<td><input type="text" name="canNomiAreaPincode" value="${list.getCanNomiAreaPincode()}"></td>
</tr>



<tr>
<td>Candidate Credit Point</td>
<td><input type="radio" name="canCreditStatus" value="Yes" size="10">Yes
<input type="radio" name="canCreditStatus" value="No" size="10">No
</tr>

<tr>
<td>Credit Full Name</td>
<td><input type="text" name="canCreditName"  value="${list.getCanCreditName()}"></td>
</tr>

<tr>
<td>Candidate Credit Relation</td>
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
<td>Credit Party Name</td>
<td><select Name="canCreditPartyName" value="${list.getCanCreditPartyName()}">
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
<td>Credit Designation</td>
<td><input type="text" name="canCreditDesignation"  value="${list.getCanCreditDesignation()}"></td>
</tr>



<tr>
<td>Security Question</td>
<td><select name="canSecurityQues"  value="${list.getCanSecurityQues()}">
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select></td>

</td></tr>

<tr><td>Answer</td>
<td align="right"><input type="text" name="canSecurityAnswer"  value="${list.getCanSecurityAnswer()}"></td>
</tr>

<tr>
<td>Email Id</td>
<td><input type="text" name="canEmailId" value="${list.getCanEmailId()}"></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="canPassword"  value="${list.getCanPassword()}"></td>
</tr>

<tr>
<td>Re-password</td>
<td><input type="password" name="canRepassword" value="${list.getCanRepassword()}"></td>
</tr>


<tr>
<td></td>
<td align="right"><input type="submit" value="Next"></td>
</tr>


</table>
</form>

</body>
</html>