

	// PublicAccessModifier.java
public class PublicAccessModifier {
	    public static void main( String[] args ) {
	        // accessing the class
	        Cat cat = new Cat();

	        // accessing the public variable
	        cat.legCount = 4;
	        // accessing the public method
	        cat.display();
    }
}


//  class containing public method and variable
class Cat {
// public variable
	public int legCount;
	
	// public method
	public void display() {
	    System.out.println("I am a Cat.");
	    System.out.println("I have " + legCount + " legs.");
	}
}