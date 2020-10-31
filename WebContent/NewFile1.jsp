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
	  changeSelectp('vpermacity', cityList, cityList);
	}

	function changeSelectp(fieldID, newOptions, newValues) {
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
<form name="myform1" action="SaveServlet" method="post">
<table border="0" cellpadding="5" align="left">
<tr>
<td>First Name</td></tr><tr>
<td><input   type="text"  name="vfirstname" ></td>
</tr>

<tr>
<td>Middle Name</td></tr><tr>
<td><input  type="text" name="vmiddlename"  ></td>
</tr>

<tr>
<td>Last Name</td></tr><tr>
<td><input  type="text" name="vlastname"  ></td>
</tr>

<tr>
<td>Gender</td></tr><tr>
<td><input type="radio" name="vgender" id="male" value="male" >Male
<input type="radio" name="vgender" id="female" value="female" >Female
<input type="radio" name="vgender" id="other" value="other" >Other</td>
</tr>

<tr>
<td><span class="required">*</span>RelationShip Status</td></tr><tr>
<td><input type="radio" name="vmaritalstatus" id="unmarried" value="unmarried" size="10"  >Unmarried
<input type="radio" name="vmaritalstatus" id="married" value="married" size="10">married</td>
</tr>

<tr>
<td>Father's Name</td></tr><tr>
<td><input  type="text" id="vfathername" name="vfathername"   ></td>
</tr>

<tr>
<td>Mother's Name</td></tr><tr>
<td><input  type="text"  id="vmothername" name="vmothername"  ></td>
</tr>

<tr>
<td>Wife's Name</td></tr><tr>
<td><input  type="text" id="vwifename" name="vwifename"></td>
</tr>

<tr>
<td>Husband's Name</td></tr><tr>
<td><input  type="text" id="vhusbandname"  name="vhusbandname"  ></td>
</tr>

<tr>
<td>Gaurdian's Name</td></tr><tr>
<td><input  type="text" name="vgaurdianname" ></td>
</tr>

<tr>
<td></span>Age</td></tr><tr>
<td><input  type="number" name="vage"  ></td>
</tr>

<tr>
<td>DOB</td></tr><tr>
<td><input  type="date" name="vdob"  ></td>
</tr>

<tr>
<td>Occupation</td></tr><tr>
<td><input type="radio" name="voccupatiostatus" value="Private" size="10" >Private
<input type="radio" name="voccupatiostatus" value="Government" size="10">Government
<input type="radio" name="voccupatiostatus" value="Student" size="10">Student
<input type="radio" name="voccupatiostatus" value="Other" size="10">Other</td>
</tr>

<tr>
<td>Occupation Doc</td></tr><tr>
<td><input type="file" name="voccupationdoc"  ></td>
</tr>

<tr>
<td>Designation</td></tr><tr>
<td><input  type="text" name="vdesignation"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Adhar No</td></tr><tr>
<td><input  type="text" name="vadharno"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Adhar Doc</td></tr><tr>
<td><input   maxlength="12" type="file" name="vadhardoc"  ></td>
</tr>

<tr>
<th><span class="required">*</span>Pan No</th></tr><tr>
<td><input  type="text" name="vpanno"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Pan Doc</td></tr><tr>
<td><input  type="file" name="vpandoc"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Photo</td></tr><tr>
<td><input  type="file" name="vphoto"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Mobile No</td></tr><tr>
<td><input  type="text" name="vmob"  ></td>
</tr>


<tr>
<td>-----Correspondance address------</td></tr>
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
<tr>
<td>Pincode</td></tr><tr>
<td><input  type="text" name="vcorrespincode"  ></td>
</tr>
<tr>

<tr>
<td>-----Permanent address------</td></tr>

<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">
<select name="vpermacountry" id="vpermacountry" onchange="setStatesp();">
  <option value="India">India</option>
  <option value="Other">other</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">
<select name="vpermastate" id="vpermastate" onchange="setCitiesp();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">
<select name="vpermacity"  id="vpermacity">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>

<tr>
<td><span class="required">*</span>Pincode</td></tr><tr>
<td><input  type="text" name="vpermapincode"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Differently Challenged</td></tr><tr>
<td><input type="radio" name="vpwdstatus " value="yes"  >Yes
<input  type="radio" name="vpwdstatus" value="no" >No
</tr>

<tr>
<td>PwdUdId No</td></tr><tr>
<td><input  type="text" name="vpwdudidno"  ></td>
</tr>

<tr>
<th>PwdUdIdDoc</td></tr><tr>
<td><input   maxlength="12" type="file" name="vpwddoc" ></td>
</tr>

<tr>
<td>Email Id</td></tr><tr>
<td><input  type="text" name="vemailId"  ></td>
</tr>

<tr>
<td>Password</td></tr><tr>
<td><input  type="text" name="vpassword "  ></td>
</tr>

<tr>
<td>RePassword</td></tr><tr>
<td><input  type="text" name="vrepassword"  ></td>
</tr>

<tr>
<td><span class="required">*</span>Security Question</td></tr><tr>
<td><select name="vsecurityQues" >
 <option value="-1" selected>select..</option>
 <option value="what is your pet animal name?">What is your pet animal name?</option>
 <option value="what is your class Teacher name">What is your class Teacher name?</option>
 <option value="What is your favroite company you want to work?">What is your favorite company you want to work?</option>
</select></td></tr>

<tr><td><span class="required">*</span>Security Answer</td></tr><tr>
<td><input  type="text" name="vsecurityAnswer"  ></td>
</tr>

 
<tr>

<td>
<td><input type="submit" value="Next"></td>
</tr>

</table>
</form>
</body>
</html>