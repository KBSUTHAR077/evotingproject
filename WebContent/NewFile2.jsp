<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
var states = new Array();
states['Uttar Pradesh'] = new Array('Kanpur','Gaziabad','Lucknow','Agra','Varanasi','Allahabad');

states['Maharashtra'] = new Array('Mumbai','Pune','Nagpur','Nashik')




var cities = new Array();

cities['Maharashtra'] = new Array();
cities['Maharashtra']['Mumbai']          = new Array('Mumbai1','Mumbai2','Mumbai3','Mumbai4');
cities['Maharashtra']['Pune'] = new Array('Pune1','Pune2','Pune3','Pune4','Varanasi','Allahabad');


cities['Uttar Pradesh'] = new Array();
cities['Uttar Pradesh']['Kanpur'] = new Array('kanpur1','kanpur2');
cities['Uttar Pradesh']['Varanasi']       = new Array('bhagwanpur','kandwa')


var Party = new Array();
Party['BJP'] = new Array('CANDIDATE1','CANDIDATE2','CANDIDATE3','CANDIDATE4','CANDIDATE5','CANDIDATE6');

Party['BSP'] = new Array('BSP1','BSP2','Nagpur','Nashik')
Party['NCP'] = new Array('NCP1','NCP2','Nagpur','Nashik')
Party['ICP'] = new Array('ICP1','ICP2','Nagpur','Nashik')
Party['CMP'] = new Array('CPM','CPM2','Nagpur','Nashik')

var Candidate = new Array();

Candidate['BJP'] = new Array();
Candidate['BJP']['CANDIDATE1']          = new Array('ID1','Mumbai2','Mumbai3','Mumbai4');
Candidate['BJP']['CANDIDATE2'] = new Array('ID1','Pune2','Pune3','Pune4','Varanasi','Allahabad');


Candidate['BSP'] = new Array();
Candidate['BSP']['BSP1'] = new Array('BSPID1','BSPID2');
Candidate['BSP']['BSP2']       = new Array('BSP2ID1bhagwanpur','kandwa')



function setcitiesp() {
	  stateySel = document.getElementById('state');
	  stateList = states[stateySel.value];
	  changeSelect('canpermastate', stateList, stateList,stateList);
	  setTownsp();
	}

	function setTownsp() {
		stateySel = document.getElementById('state');
	  stateSel = document.getElementById('canpermastate');
	  cityList = cities[stateySel.value][stateSel.value];
	  changeSelect('canpermacity', cityList, cityList,cityList);
	  setPARTYp();
	}
	
	function setPARTYp() {
		  partySel = document.getElementById('partyc');
		  partyList = Party[partySel.value];
		  changeSelect('canp', partyList, partyList,partyList);
		  setCANDIDATEp();
		}

		function setCANDIDATEp() {
			partySel = document.getElementById('partyc');
		 party1Sel = document.getElementById('canp');
		  canList = Candidate[partySel.value][party1Sel.value];
		  changeSelect('canpid', canList, canList,canList);
		  
		}
		
	

	
	function changeSelect(fieldID, newOptions, newValues,newmore) {
	  selectField = document.getElementById(fieldID);
	  selectField.options.length = 0;
	  for (i=0; i<newOptions.length; i++) {
	    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i], newmore[i]);
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
	setcitiesp();
	//setPARTYp();
	
});

</script>

</head> 

<body>
<table border="1" cellpadding="5">

<tr>
<td colspan="2">-----Voting area------</td>
<tr>
<td style="text-align: left;"><p class="nospace btmspace-15">STATE:</p></td>
<td style="text-align: left;">
<select name="state" id="state" onchange="setcitiesp();">
  <option value="Maharashtra">Maharashtra</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  
</select>
</td>
</tr><tr>
<td style="text-align: left;">CITY:</td>
<td style="text-align: left;">
<select name="canpermastate" id="canpermastate" onchange="setTownsp();">
  <option value="">Please select a State</option>
</select>
</td>
</tr>

<tr>
<td style="text-align: left;">Towns:</td>
<td style="text-align: left;">
<select name="canpermacity"  id="canpermacity"   >
  <option value="">Please select state</option>
  
</select>
</td>
</tr>


<tr>
<td style="text-align: left;">PARTY:</td>
<td style="text-align: left;">
<select name="partyc"  id="partyc"  onchange="setPARTYp();" >
 <option value="BJP">BJP</option>
  <option value="BSP">BSP</option>
  <option value="cpm">cpm</option>
  <option value="inc">inc</option>
   <option value="ncp">ncp</option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;">CANDIDATE:</td>
<td style="text-align: left;">
<select name="canp"  id="canp"  onchange="setCANDIDATEp();" >
  <option value="">Please select a State</option>
</select>
</td>
</tr>
<tr>
<td style="text-align: left;">CANDIDATEID:</td>
<td style="text-align: left;">
<select name="canpid"  id="canpid">
  <option value="">Please select a State</option>
</select>
</td>
</tr>






</table>

            <button type="submit" value="submit">Submit</button>
         
        </form>
</body>
</html>