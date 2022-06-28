package net.javaguides.employeemanagement.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.logout.LogoutServlet;

import net.javaguides.jsp.jdbc.database.EmployeeDao;
import net.javaguides.jsp.jdbc.bean.Employee;



@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L ;
    private EmployeeDao employeeDao=new EmployeeDao();

    public EmployeeServlet() {
    	super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	    	response.getWriter().append("Server at:").append(request.getContextPath());
    	    	RequestDispatcher dispatcher=request.getRequestDispatcher("employeeregister.jsp");
    	    	dispatcher.forward(request, response);
    	    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");

        Employee employee = new Employee();
        employee.setFirstName(firstName);
        employee.setLastName(lastName);
        employee.setUsername(username);
        employee.setPassword(password);
        employee.setContact(contact);
        employee.setAddress(address);

        try {
            employeeDao.registerEmployee(employee);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        RequestDispatcher dispatcher=request.getRequestDispatcher("employeedetails.jsp");
    	dispatcher.forward(request, response);    
    }

	
}