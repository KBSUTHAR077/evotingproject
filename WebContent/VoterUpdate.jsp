<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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

</script>



</head>
<body>
<form action="VoterUpdate" method="post">
<table border="0" cellpadding="5">
<tr><td>
Id: <input type="text" name="vid" value="${list.getVid()}"><br></td></tr>
<tr>
<td>First Name</td>
<td><input type="text" name="vfirstname" value="${list.getVfirstname()}" ></td>
</tr>

<tr>
<td>Middle Name</td>
<td><input type="text" name="vmiddlename" value="${list.getVmiddlename()}"></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" name="vlastname" value="${list.getVlastname()}"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="vgender" value="Male"   size="10">Male
<input type="radio" name="vgender" value="Female"  size="10">Female
<input type="radio" name="vgender" value="Other"   size="10">Other</td>
</tr>

<tr>
<td>RelationShip Status</td>
<td><input type="radio" name="vmaritalstatus" value="Unmarried" size="10">Married
<input type="radio" name="vmaritalstatus" value="Married" size="10">Unmarried</td>
</tr>

<tr>
<td>Father's Name</td>
<td><input type="text" name="vfathername"  value="${list.getVfathername()}" ></td>
</tr>

<tr>
<td>Mother's Name</td>
<td><input type="text" name="vmothername"  value="${list.getVmothername()}" ></td>
</tr>

<tr>
<td>Wife's Name</td>
<td><input type="text" name="vwifename"  value="${list.getVwifename()}" ></td>
</tr>

<tr>
<td>Husband's Name</td>
<td><input type="text" name="vhusbandname"  value="${list.getVhusbandname()}" ></td>
</tr>

<tr>
<td>Gaurdian's Name</td>
<td><input type="text" name="vgaurdianname"  value="${list.getVgaurdianname()}" ></td>
</tr>

<tr>
<td>Age</td>
<td><input type="text" name="vage"  value="${list.getVage()}" ></td>
</tr>

<tr>
<td>DOB</td>
<td><input type="date" name="vdob"  value="${list.getVdob()}" ></td>
</tr>

<tr>
<td>Occupation</td>
<td><input type="radio" name="voccupatiostatus" value="Private" size="10">Private
<input type="radio" name="voccupatiostatus" value="Government" size="10">Government
<input type="radio" name="voccupatiostatus" value="Student" size="10">Student
<input type="radio" name="voccupatiostatus" value="Other" size="10">Other</td>
</tr>

<tr>
<td>Occupation Doc</td>
<td><input type="file" name="voccupationdoc"  value="${list.getVoccupationdoc()}" ></td>
</tr>

<tr>
<td>Designation</td>
<td><input type="text" name="vdesignation"  value="${list.getVdesignation()}" ></td>
</tr>

<tr>
<td>Adhar No</td>
<td><input type="text" name="vadharno"  value="${list.getVadharno()}" ></td>
</tr>

<tr>
<td>Adhar Doc</td>
<td><input type="file" name="vadhardoc" value="${list.getVadhardoc()}" ></td>
</tr>

<tr>
<th>Pan No</th>
<td><input type="text" name="vpanno"  value="${list.getVpanno()}" ></td>
</tr>

<tr>
<td>Pan Doc</td>
<td><input type="file" name="vpandoc"  value="${list.getVpandoc()}"  ></td>
</tr>

<tr>
<td>Photo</td>
<td><input type="file" name="vphoto"  value="${list.getVphoto()}" ></td>
</tr>

<tr>
<td>Mobile No</td>
<td><input type="text" name="vmob"  value="${list.getVmob()}" ></td>
</tr>


<tr>
<td>-----Correspondance address------</td></tr>
<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="vcorrescountry" id="vcorrescountry" value="${list.getVcorrescountry()}" onchange="setStates();">
  <option value="India">India</option>
  <option value="Other">other</option>  
</select>
</td>
</tr>

<tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="vcorresstate" id="vcorresstate" value="${list.getVcorresstate()}" onchange="setCities();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>

<tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="vcorrescity" value="${list.getVcorrescity()}" id="vcorrescity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>


<tr>
<td>Pincode</td>
<td><input type="text" name="vcorrespincode"  value="${list.getVcorrespincode()}" ></td>
</tr>
<tr>

<tr>
<td>-----Permanent address------</td>

<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="vpermacountry" id="vpermacountry" value="${list.getVpermacountry() }" onchange="setStatesp();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr>

<tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="vpermastate" id="vpermastate" value="${list.getVpermastate() }" onchange="setCitiesp();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>

<tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="vpermacity" value="${list.getVpermacity() }"  id="vpermacity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>



<tr>
<td>Pincode</td>
<td><input type="text" name="vpermapincode"  value="${list.getVpermapincode()}" ></td>
</tr>

<tr>
<td>Differently Challenged</td>
<td><input type="radio" name="vpwdstatus " value="Yes" size="10">Yes
<input type="radio" name="vpwdstatus" value="No" size="10">No
</tr>

<tr>
<td>PwdUdId No</td>
<td><input type="text" name="vpwdudidno"  value="${list.getVpwdudidno()}" ></td>
</tr>

<tr>
<th>PwdUdIdDoc</td>
<td><input type="file" name="vpwddoc"  value="${list.getVpwddoc()}" ></td>
</tr>

<tr>
<td>Email Id</td>
<td><input type="text" name="vemailId"  value="${list.getVemailId()}" ></td>
</tr>

<tr>
<td>Password</td>
<td><input type="text" name="vpassword "  value="${list.getVpassword()}" ></td>
</tr>

<tr>
<td>RePassword</td>
<td><input type="text" name="vrepassword"  value="${list.getVrepassword()}" ></td>
</tr>

<tr>
<td>Security Question</td>
<td><select name="vsecurityQues" value="${list. getVsecurityQues()}">
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select></td></tr>

<tr><td></td>
<td align="right"><input type="text" name="vsecurityAnswer"  value="${list.getVsecurityAnswer()}"  size="50"></td>
</tr>

<tr>
<td><input type="Submit" value="Next"></td>
</tr>

</table>
</form>


</body>
</html>