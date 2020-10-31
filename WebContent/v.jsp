<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script type="text/javascript">

function msg()
{   
	var vfirstname=document.myform1.vfirstname.value;
	var vlastname=document.myform1.vlastname.value;
	
	var vfathername=document.myform1.vfathername.value;
	var vmothername=document.myform1.vmothername.value;
	var vgender=document.myform1.vgender.value;
	var vage=document.myform1.vage.value;
	var vdob=document.myform1.vdob.value;
	var vadharno=documnment.myform1.vadharno.value;
	var vmob=document.myform1.vmob.value;
	var vpwdudidno=document.myform1.vpwdudidno.value;
	var vpwddoc=document.myform1.vpwddoc.value;
	var vpwdstatus=document.myform1.vpwdstatus.value;
	if(vfirstname==vlastname)
	{
		alert("name can't be same");
		return false;
	}
	
	
	else if(document.getElementById('married').checked)
			{
				
				if(document.myform1.vgender.value=="male")
					{
 					document.getElementById("vwifename").focus();
 					document.getElementById("vhusbandname").blur();
					return false;
					}
				else if(document.myform1.vgender.value=="female" || document.myform1.vgender.value=="other")
					{
					document.getElementById("vhusbandname").focus();
					document.getElementById("vwifename").blur();
					return false;
					}
			}
	else if(document.getElementById('Unmarried').checked)
			{
			
			document.getElementById("vfathername").focus();
					if(vfathername==null ||vfathername=="")
					{
					alert("father name can't be blank");
					
					return false;
					}
	
					else if(vmothername==null ||vmothername=="")
					{
						document.getElementById("vmothername").focus();
					alert("mother name can't be blank");
					return false;
					}
			return false;
			}
	
		
		else if(vdob==null ||vdob=="")
		{
			alert("vdob can't be blank");
			document.getElementById("vdob").focus();
			return false;
		}
	
		else if(!(vadharno.length>12 ||vadharno.length <10))
		{
		alert("adhar no should not be less than 12 digit");
		return false;
		}
		else if(!(vmob.length >10 || vmob.length <10))
		{
			alert("Mobile no should not be lesser or greater than 10 digit");
			return false;
		}
	else if(!(vmob.charAt()=='9'|| vmob.charAt()=='8' ||vmob.charAt()=='7'))
		{
			alert("Mobile no should start with 9 or 8 or 7 ");
			return false;
		}
	else if(document.getElementById('yes').checked)
	{
	
		if(vpwdudidno==null ||vpwdudidno=="")
			{
 				alert("id no should not be empty");
 				document.getElementById("vpwdudidno").focus();
				return false;
			}
		else if(vpwddoc==null || vpwddoc=="")
		{
				alert("should be uploaded");
				document.getElementById("vpwddoc").focus();
			return false;
		}
		return false;
     }
	else if(document.getElementById('no').checked)
	{
		document.getElementById("vpwdudidno").blur();
		document.getElementById("vpwddoc").blur();
	}
}	
	
	
</script>

<body>
<form name="myform1" action="SaveServlet"  method="post">
<table border="0" cellpadding="5" align="left">

<tr>
<td><span class="required">*</span>First Name</td></tr><br><tr>
<td><input type="text"    name="vfirstname" size="50" required></td>
</tr>

<tr>
<td>Middle Name</td><br></tr><br><tr>
<td><input  type="text" name="vmiddlename" size="50" ></td>
</tr>

<tr>
<td><span class="required">*</span>Last Name</td></tr><br><tr>
<td><input  type="text" name="vlastname" size="50"  required></td>
</tr>

<tr>
<td><span class="required">*</span>Gender</td></tr><br><tr>
<td><input type="radio" name="vgender" id="male" value="male" size="10" required>Male
<input type="radio" name="vgender" id="female" value="female" size="10">Female
<input type="radio" name="vgender" id="other" value="other" size="10">Other</td>
</tr>

<tr>
<td><span class="required">*</span>RelationShip Status</td></tr><br><tr>
<td><input type="radio" name="vmaritalstatus" id="Unmarried" value="Unmarried" size="10" onmouseover="msg()" required>Unmarried
<input type="radio" name="vmaritalstatus" id="married" value="Married" size="10" onmouseover="msg()">married</td>
</tr>

<tr>
<td>Father's Name</td></tr><br><tr>
<td><input  type="text" id="vfathername" name="vfathername" size="50"  style="height:30px; onmouseover="msg()"></td>
</tr>

<tr>
<td>Mother's Name</td></tr><br><tr>
<td><input  type="text"  id="vmothername" name="vmothername" size="50"  onmouseover="msg()"></td>
</tr>

<tr>
<td>Wife's Name</td></tr><br><tr>
<td><input  type="text" id="vwifename" name="vwifename" size="50"></td>
</tr>

<tr>
<td>Husband's Name</td></tr><br><tr>
<td><input  type="text" id="vhusbandname"  name="vhusbandname" size="50" ></td>
</tr>

<tr>
<td>Gaurdian's Name</td></tr><br><tr>
<td><input  type="text" name="vgaurdianname" size="50" ></td>
</tr>
<tr>
<td><span class="required">*</span>Age</td></tr><br><tr>
<td><input  type="number" name="vage" id="vage" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>DOB</td></tr><br><tr>
<td><input  type="date" name="vdob" id="vdob" size="50" required onmouseover="msg()"></td>
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
<td><input  type="text" name="vdesignation" size="50" ></td>
</tr>

<tr>
<td><span style=color:"red" class="required">*</span>Adhar No</td></tr><br><tr>
<td><input  type="text" name="vadharno" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Adhar Doc</td></tr><br><tr>
<td><input   maxlength="12" type="file" name="vadhardoc" size="50" required></td>
</tr>

<tr>
<th><span class="required">*</span>Pan No</th></tr><br><tr>
<td><input  type="text" name="vpanno" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Pan Doc</td></tr><br><tr>
<td><input  maxlength="12" type="file" name="vpandoc" size="50" required></td>

</tr>

<tr>
<td><span class="required">*</span>Photo</td></tr><br><tr>
<td><input  type="file" name="vphoto" size="50" required></td>
</tr>

<tr>
<td><span class="required">*</span>Mobile No</td></tr><br><tr>
<td><input  type="text" name="vmob" size="50" required></td>
</tr>



<td><span class="required">*</span>vpwdstatus Status</td></tr><br><tr>
<td><input type="radio" name="vpwdstatus" id="yes" value="yes" size="10" onmouseover="msg()" required>yes
<input type="radio" name="vpwdstatus" id="no" value="no" size="10" onmouseover="msg()">no</td>
</tr>

<tr>
<td>Details</td></tr><br><tr>
<td><input style="height:30px; type="text" id="vpwdudidno" name="vpwdudidno" size="50"  onmouseover="msg()"></td>
</tr>

<tr>
<td>doc</td></tr><br><tr>

<td><input style="height:30px;  maxlength="12" type="file" name="vpwddoc" size="50" required></td>
</tr>

<tr>

<td><input type="button" value="click" onclick="msg()"></td>
</tr>



</table>
</form>
</body>
</html>