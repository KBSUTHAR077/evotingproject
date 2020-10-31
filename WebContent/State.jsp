<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>

<%
String country=request.getParameter("count");  

 String buffer="<select name='state' onchange='showCity(this.value);'><option value='-1'>Select</option>";  

 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","");  

 Statement stmt = con.createStatement();  

 ResultSet rs = stmt.executeQuery("Select * from state where countryid='"+country+"' ");  

   while(rs.next()){

   buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString(3)+"</option>";  

   }  
 buffer=buffer+"</select>";  

 response.getWriter().println(buffer); 

 }
 catch(Exception e){

     System.out.println(e);

 }

 %>