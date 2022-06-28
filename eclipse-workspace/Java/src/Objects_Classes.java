public class Objects_Classes{  
//Java Program to illustrate how to define a class and fields  
//Defining a Student class.  
 //defining fields  
	int id=1;//field or data member or instance variable  
	String name= "Alice";  
 //creating main method inside the Student class  
	public static void main(String args[]){  
  //Creating an object or instance  
		Objects_Classes s1=new Objects_Classes();//creating an object of Student  
  //Printing values of the object  
		System.out.println(s1.id);//accessing member through reference variable  
		System.out.println(s1.name);  
	}  
}  