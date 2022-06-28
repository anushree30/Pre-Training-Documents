
public class implementing_interface implements Interface {
	
	//using methods listed in interface

	   public void eat() {
	      System.out.println("Mammal eats");
	   }

	   public void travel() {
	      System.out.println("Mammal travels");
	   } 

	   public int noOfLegs() {
	      return 0;
	   }

	   public static void main(String args[]) {
		  implementing_interface m = new implementing_interface();
	      m.eat();
	      m.travel();
	   }
		

}
