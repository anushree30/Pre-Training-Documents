package humans;

public class mammals implements animals{

	
	//using methods listed in interface

   public void eat() {
      System.out.println("Mammal and animals eats");
   }

   public void travel() {
      System.out.println("Mammal travels");
   } 

   public int noOfLegs() {
      return 0;
   }

   public static void main(String args[]) {
	   mammals m = new mammals();
      m.eat();
      m.travel();
   }
		

}
