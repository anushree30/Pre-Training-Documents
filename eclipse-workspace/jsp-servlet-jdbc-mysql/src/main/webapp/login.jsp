<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
</head>
<body>
 <div align="center">
  <h1> Login Form</h1>
  <form action="<%=request.getContextPath()%>/login" method="post">
   <table style="with: 100%">
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>

   </table>
   <input type="submit" value="Submit" />
	<a href="employeeregister.jsp">New user? Register here</a>
   
  </form>
  
	  
 </div>

</body>
</html>