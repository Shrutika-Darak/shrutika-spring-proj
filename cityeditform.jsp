<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

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
<h1 style="text-align: center;">Edit City</h1><hr><br><br>
       <form:form method="POST" action="/SpringOrmCRUD/editsave">    
        <table class="center">    
         <tr>    
         <td></td>    
         <td><form:hidden  path="id" /></td>  
         </tr>   
         <tr>
          <td>Name : </td>   
          <td><form:input path="cityname"  /></td>  
         </tr>    
          
           
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>

</body>
</html>