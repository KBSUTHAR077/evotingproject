<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function msg2();
	{
		var name1=document.formAdminVoterUpdate.vfirstname.value;
		var name2=documentformAdminVoterUpdate.vlastname.value;
		 if(document.myform1.button1.checked == true)
		{
					if(name1==null ||name1=="")
						{
						document.formAdminVoterUpdate.button2.checked == false
							alert("name1 can't be blank");
							return false;
						}
					
		}	
		else if(document.formAdminVoterUpdate.button2.checked == true)
		{
					if(name2==null ||name2=="")
						{ 
						document.myform1.button1.checked == false
							alert("name2 can't be blank");
							return false;
						}	
		}
	}
</script>
</head>
<body>

</body>
</html>