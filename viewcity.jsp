<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>

<h1 style="text-align: center;">City List</h1><br>

<table class="center" border="2" width="70%" cellpadding="2" style="text-align: center; background-position: center; background-size: cover;">  
<tr style="color: white; background-color: maroon; "><th>Id</th><th>Name</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="city" items="${list}">   
   <tr style="background-color: #f7dcc3;">  
   <td>${city.id}</td>  
   <td>${city.cityname}</td>  
     
   <td><a href="editcity/${city.id}">Edit</a></td>  
   <td><a href="deletecity/${city.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <section style="text-align: center;">
   <a style="text-align: center;" href="cityform" >Add New City</a>
	</section>
	
</body>
</html>