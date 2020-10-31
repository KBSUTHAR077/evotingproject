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

<form action="CandidateViewForm">
<table border="0" cellpadding="5">
<tr>
<td>First Name</td>
<td>${list.getCanfirstname()}</td>
</tr>

<tr>
<td>Middle Name</td>
<td>${list.getCanmiddlename()}</td>
</tr>

<tr>
<td>Last Name</td>
<td>${list.getCanlastname()}</td>
</tr>

<tr>
<td>Gender</td>
<td>${list.getCangender()}
</td>
</tr>

<tr>
<td>RelationShip Status</td>
<td>${list.getCanmaritalstatus()}</td>
</tr>

<tr>
<td>Father's Name</td>
<td>${list.getCanfathername()}</td>
</tr>

<tr>
<td>Mother's Name</td>
<td>${list.getCanmothername()}</td>
</tr>

<tr>
<td>Wife's Name</td>
<td>${list.getCanwifename()}</td>
</tr>

<tr>
<td>Husband's Name</td>
<td>${list.getCanhusbandname()}</td>
</tr>

<tr>
<td>Gaurdian Name</td>
<td>${list.getCangaurdianname()}</td>
</tr>

<tr>
<td>Age</td>
<td>${list.getCanage()}</td>
</tr>

<tr>
<td>DOB</td>
<td>${list.getCandob()}</td>
</tr>

<tr>
<td>Occupation</td>
<td>${list.getCanoccupationstatus()}</td>
</tr>

<tr>
<td>Occupation Doc</td>
<td>${list.getCanoccupationdoc()}</td>
</tr>

<tr>
<td>Designation</td>
<td>${list.getCandesignation()}</td>
</tr>


<tr>
<td>Adhar No</td>
<td>${list.getCanadhardoc()}</td>
</tr>

<tr>
<td>Adhar Doc</td>
<td>${list.getCanadharno()}</td>
</tr>

<tr>
<th>Pan No</th>
<td>${list.getCanpanno()}</td>
</tr>

<tr>
<td>Pan Doc</td>
<td>${list.getCanpandoc()}</td>
</tr>

<tr>
<td>Photo</td>
<td>${list.getCanphoto()}</td>
</tr>

<tr>
<td>Mobile No</td>
<td>${list.getCanmob()}</td>
</tr>
<tr>
<td>-----Correspondance address------</td>


<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">${list.getCancorrescountry()}</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">${list.getCancorresstate()}
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">${list.getCancorrescity()}</td>
</tr>
<tr>
<td>Pincode</td>
<td>${list.getCancorrespincode()}</td>
</tr>
<tr>

<tr>
<td>-----Permanent address------</td>

<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">${list.getCanpermacountry()}</td>
</tr><tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">${list.getCanpermastate()}</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">${list.getCanpermacity()}</td>
</tr>

<tr>
<td>Pincode </td>
<td>${list.getCanpermapincode()}</td>
</tr>
<tr>

<tr>
<td>Differently Challenged</td>
<td>${list.getCanpwdstatus()}</td>
</tr>

<tr>
<td>PwdUdId No</td>
<td>${list.getCanpwdudidno()}></td>
</tr>

<tr>
<th>PwdUdIdDoc</td>
<td>${list.getCanpwddoc()}</td>
</tr>

<tr>
<td>Criminal Record</td>
<td>${list.getCanCriminalStatus()}</td>
</tr>

<tr>
<td>Criminal Record Detail</td>
<td>${list.getCanCriminalRecord()}</td>
</tr>

<tr>
<td>Criminal Doc</td>
<td>${list.getCanCriminalDoc()}</td>
</tr>

<tr>
<tr>
<td>Party Name</td>
<td>${list.getCanPartyName()}</td>
</tr>


<tr>
<td>-----Candidate Nominated Area Details------</td>

<tr>
<td style="text-align: left;">Country:</td>
<td style="text-align: left;">${list.getCanNomiAreaCountry()}</td>
</tr>
<tr>
<td style="text-align: left;">State:</td>
<td style="text-align: left;">${list.getCanNomiAreaState()}
</td>
</tr><tr>
<td style="text-align: left;">City:</td>
<td style="text-align: left;">${list.getCanNomiAreaCity()}
</td>
</tr>

<tr>
<td>Pincode</td>
<td>${list.getCanNomiAreaPincode()}</td>
</tr>



<tr>
<td>Candidate Credit Point</td>
<td>${list.getCanCreditStatus()}</td>
</tr>

<tr>
<td>Credit Full Name</td>
<td>${list.getCanCreditName()}</td>
</tr>

<tr>
<td>Candidate Credit Relation</td>
<td>${list.getCanCreditRelation()}</td>
</tr>


<tr>
<td>Credit Party Name</td>
<td>${list.getCanCreditPartyName()}</td>
</tr>


<tr>
<td>Credit Designation</td>
<td>${list.getCanCreditDesignation()}</td>
</tr>



<tr>
<td>Security Question</td>
<td>${list.getCanSecurityQues()}</td>

</td></tr>

<tr><td>Answer</td>
<td align="right">${list.getCanSecurityAnswer()}</td>
</tr>

<tr>
<td>Email Id</td>
<td>${list.getCanEmailId()}</td>
</tr>

<tr>
<td>Password</td>
<td>${list.getCanPassword()}</td>
</tr>

<tr>
<td>Re-password</td>
<td>${list.getCanRepassword()}</td>
</tr>


<tr>
<td></td>
<td align="right"><input type="submit" value="Next"></td>
</tr>


</table>
</form>

</head>
<body>

</body>
</html>