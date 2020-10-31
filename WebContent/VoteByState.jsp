<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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


var party =new Array();

party['India']['Maharashtra'] ['Mumbai'] =new Array('bjp','bsp','inc'); 
party['India']['Maharashtra'] ['Pune'] =new Array('bjp','bsp','inc'); 



function setStates() {
  cntrySel = document.getElementById('vcorrescountry');
  stateList = states[cntrySel.value];
  changeSelect('vcorresstate', stateList, stateList,statelist);
  setCities();
}

function setCities() {
  cntrySel = document.getElementById('vcorrescountry');
  stateSel = document.getElementById('vcorresstate');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('vcorrescity', cityList, cityList, citylist);
}

function setparty() {
	  cntrySel = document.getElementById('vcorrescountry');
	  stateSel = document.getElementById('vcorresstate');
	  cityList = document.getElementById('vcorrescity');
	  partyList = party[cntrySel.value][stateSel.value][cityList.value];
	  changeSelect('vparty', partyList, partyList ,partylist);
	}



function changeSelect(fieldID, newOptions, newValues,newmorevalues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i], newmorevalues[i]);
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

</script>
<form name="test" method="POST">
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
<select name="vcorrescity"  id="vcorrescity" on change="setparty();">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>
><tr>
<td style="text-align: left;">Party:</td>
<td style="text-align: left;">
<select name="vparty"  id="vparty">
  <option value="">Please select a Country</option>
</select>
</td>
</tr>
</table>
</form>

</body>
</html>