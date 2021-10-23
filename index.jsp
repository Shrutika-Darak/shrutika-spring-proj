<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.backgroundimg{
		       background-image: C:\Users\Lenovo\eclipse-workspace\SpringMvcOrmProject/11115.jpg;
		       background-size: cover;
		       background-position: center;
		       background-repeat: no-repeat;
		       
		}
		
body header{
			text-align: center;
			color: white;
			font-size: x-large;
}

section article, footer{
			height:100px;
			width:500px;
			border:2px   solid #a36ca6;
			padding:60px 30px;
			margin:0 auto;	
			margin-top:85px;
			text-align:center;
			font-family:"Cooper", sans-serif,Arial;
			background-color: #f7dcc3;	
			 box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			 opacity: 0.7;
		}
</style>
</head>
<body class="backgroundimg">
<header>
<br><h1>City Details</h1>
</header>
<section>
	<article>
		<h2><I>Example Of CRUD Operations Using Spring ORM</I></h2>
		<a href="cityform">Add City</a><br>
		<a href="viewcity">View City</a> 
    </article>
</section> 
</body>
</html>