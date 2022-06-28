<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="net.javaguides.login.database.*"%>
<%@page import="com.logout.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">  
        body{  
            font-family: Calibri;  
        }  
        input[type="text"] {  
            width: 250px;  
        }  
        input[type="submit"], input[type="reset"] {  
            width: 77px;  
            height: 27px;  
            position: left;left: 180px;  
        }  
        form{  
            text-align: center;  
            font-family: Calibri;  
            font-size: 20px;  
            border: 3px solid black;  
            width: 600px;  
            margin: 20px auto;  
        }  
        td {  
            padding: 10px;  
        }  
        td:first-child {  
            text-align: right;  
            font-weight: bold;  
        }  
        td:last-child {  
            text-align: left;  
        }
        body {
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
}

@keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}
      
    </style>
<title>Login Success</title>
</head>
<body>
 <div align="center">
  <h1>You have logged in successfully!</h1>
  <h2><a href="LogoutServlet">Logout</a> </h2>
 </div>
</body>
</html>