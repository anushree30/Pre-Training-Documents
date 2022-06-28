<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
    <script>  
        function validate() {    
            var firstName = document.reg_form.firstName;    
            var lastName = document.reg_form.lastName;   
            var username = document.reg_form.username;    
            var password= document.reg_form.password
            var address = document.reg_form.address;        
            var contact = document.reg_form.contact;    
            
            if (firstName.value.length <= 0) {    
                alert("Name is required");    
                firstName.focus();    
                return false;    
            }    
            if (lastName.value.length <= 0) {    
                alert("Last Name is required");    
                lastName.focus();    
                return false;    
            }    
            if (username.value.length <= 0) {    
                alert("username is required");    
                username.focus();    
                return false;    
            }    
            if (password.value.length <= 0) {    
                alert("password  is required");    
                password.focus();    
                return false;    
            }  
            if (address.value.length <= 0) {    
                alert("Address is required");    
                address.focus();    
                return false;    
            }    
              
            if (contact.value.length <= 0) {    
                alert("Mobile number is required");    
                contact.focus();    
                return false;    
            }    
           
            return false;    
        }    
    </script>   
</head>
<body>
 <div align="center">
  <h1>Register Here!</h1>
  <form name="reg_form" onsubmit="return validate()" action="<%= request.getContextPath() %>/register" method="post">
   <table style="with: 80%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
   </table>
   <input type="submit" name="submit" value="Submit" />
   <a href="login.jsp">Existing user? Login here</a> 
  </form>
  
	
 </div>
</body>
</html>