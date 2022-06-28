import java.util.*; 
import java.util.Collections;

//Creating a Student clas with
//id and name as a attributes
class arrayList{
	public static void main(String args[])
	{
	
	    // Declaring an array of student
	    Student[] arr;
	
	    // Allocating memory for 2 objects
	    // of type student
	    arr = new Student[3];
	
	    // Creating actual student objects
	    arr[0] = new Student();
	    arr[1] = new Student();
	    arr[2] = new Student();
	
	    // Assigning data to student objects
	    arr[0].setData(1, "Alice",3);
	    arr[1].setData(2, "Prasad",5);
	    arr[2].setData(3, "Steve",4);
	
	    // Displaying the student data
	    System.out.println(
	        "Student data in student arr 0: ");
	    arr[0].display();
	
	    System.out.println(
	        "Student data in student arr 1: ");
	    arr[1].display();
	    
	    System.out.println(
		        "Student data in student arr 2: ");
		    arr[2].display();
	}
}
class Student {

	public double rating;
	public String name;
	public int id;

	// Method to set the data to
	// student objects
	public void setData(int id, String name,double rating)
	{
		this.id = id;
		this.name = name;
		this.rating=rating;
	}

	// display() method to display
	// the student data
	public void display()
	{
		System.out.println("Student id is: " + id + ", "
						+ "Student name is: "
						+ name +", "+ "and Student rating is: "+ rating   );
		System.out.println();
	}
}
