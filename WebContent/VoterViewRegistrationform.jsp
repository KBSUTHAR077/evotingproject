<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- 
<form action="VoterViewForm">
<table border="1" cellpadding="10">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>

</tr>
<c:forEach items="${sessionScope.list}" var="i">

<tr><td>${i.vid}</td>
 	<td>${i.vfirstname }</td>
 	<td>${i.vemailId}</td>
 	<td><a href="VoterUpdate?id=${i.vid}">Update</a></td>
 	</tr>


</c:forEach>

</table>
</form>-->

	<form action="VoterViewForm" >
		<table border="0" cellpadding="5">
			<tr>
				<td>Id:</td>
				<td>${list.getVid()}<br></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td>${list.getVfirstname()}</td>
			</tr>

			<tr>
				<td>Middle Name</td>
				<td>${list.getVmiddlename()}</td>
			</tr>

			<tr>
				<td>Last Name</td>
				<td>${list.getVlastname()}</td>
			</tr>

			<tr>
				<td>Gender</td>
				<td>${list.getVgender() }</td>
			</tr>

			<tr>
				<td>RelationShip Status</td>
				<td>${list.getVmaritalstatus()}</td>
			</tr>

			<tr>
				<td>Father's Name</td>
				<td>${list.getVfathername()}</td>
			</tr>

			<tr>
				<td>Mother's Name</td>
				<td>${list.getVmothername()}</td>
			</tr>

			<tr>
				<td>Wife's Name</td>
				<td>${list.getVwifename()}</td>
			</tr>

			<tr>
				<td>Husband's Name</td>
				<td>${list.getVhusbandname()}</td>
			</tr>

			<tr>
				<td>Gaurdian's Name</td>
				<td>${list.getVgaurdianname()}</td>
			</tr>

			<tr>
				<td>Age</td>
				<td>${list.getVage()}</td>
			</tr>

			<tr>
				<td>DOB</td>
				<td>${list.getVdob()}</td>
			</tr>

			<tr>
				<td>Occupation</td>
				<td>${list.getVoccupatiostatus()}</td>
			</tr>

			<tr>
				<td>Occupation Doc</td>
				<td>${list.getVoccupationdoc()}</td>
			</tr>

			<tr>
				<td>Designation</td>
				<td>${list.getVdesignation()}</td>
			</tr>

			<tr>
				<td>Adhar No</td>
				<td>${list.getVadharno()}</td>
</tr>

<tr>
<td>Adhar Doc</td>
<td>${list.getVadhardoc()}</td>
			</tr>

			<tr>
				<th>Pan No</th>
				<td>${list.getVpanno()}</td>
			</tr>

			<tr>
				<td>Pan Doc</td>
				<td>${list.getVpandoc()}</td>
			</tr>

			<tr>
				<td>Photo</td>
				<td>${list.getVphoto()}</td>
			</tr>

			<tr>
				<td>Mobile No</td>
				<td>${list.getVmob()}</td>
			</tr>


			<tr>
				<td>-----Correspondance address------</td>
				<br>
				<br>
				<td>Country</td>
				<td>${list.getVcorrescountry()}</td>
			</tr>

			<tr>
				<td>State</td>
				<td>${list.getVcorresstate()}</td>
			</tr>

			<tr>
				<td>City</td>
				<td>${list.getVcorrescity()}</td>
			</tr>

			<tr>
				<td>Pincode</td>
				<td>${list.getVcorrespincode()}</td>
			</tr>
			<tr>
			<tr>
				<td>-----Permanent address------</td>
				<br>
				<br>
				<td>Country</td>
				<td>${list.getVpermacountry() }</td>
			</tr>

			<tr>
				<td>State</td>
				<td>${list.getVpermastate() }</td>
			</tr>

			<tr>
				<td>City</td>
				<td>${list.getVpermacity() }</td>
			</tr>

			<tr>
				<td>Pincode</td>
				<td>${list.getVpermapincode()}</td>
			</tr>

			<tr>
				<td>Differently Challenged</td>
				<td>${list.getVpwdstatus()}
			</tr>

			<tr>
				<td>PwdUdId No</td>
				<td>${list.getVpwdudidno()}</td>
			</tr>

			<tr>
				<th>PwdUdIdDoc
				</td>
				<td>${list.getVpwddoc()}</td>
			</tr>

			<tr>
				<td>Email Id</td>
				<td>${list.getVemailId()}</td>
			</tr>

			<tr>
				<td>Password</td>
				<td>${list.getVpassword()}</td>
			</tr>

			<tr>
				<td>RePassword</td>
				<td>${list.getVrepassword()}</td>
			</tr>

			<tr>
				<td>Security Question</td>
				<td>${list. getVsecurityQues()}</td>
			</tr>

			<tr>
				<td>Security Question Answer</td>
				<td>${list.getVsecurityAnswer()}</td>
			</tr>

			<tr>
				<td></td>
				<td><a href="VoterUpdate?id=${i.id}">Update</a></td>
			</tr>


		</table>
	</form>

</body>
</html>