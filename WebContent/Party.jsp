<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="0" cellpadding="5">
<tr ><td colspan="2">User Profile <table>
<tr><td>&nbsp</td>  <td></td>
<td align="left">User Voter Id</td>
</tr>
<tr>
<td>PartyName</td>
<td><select Name="PartyName">
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
<td>PartySymbol</td>
<td><select Name="PartySymbol">
<option value="-1" selected>select..</option>
<option value=""></option>
<option value=""></option>
</select>
</td></tr>
<tr><td>PartyCanRegId</td>
<td><input type="textarea"></td></tr>

<tr>
<td><input type="button" value="Next"></td>
</tr>
</table>

</body>
</html>