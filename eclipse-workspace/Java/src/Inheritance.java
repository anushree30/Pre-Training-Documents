//Super class
class Calculation {
   int z;
	
   public void addition(int x, int y) {
      z = x + y;
      System.out.println("The sum of the given numbers:"+z);
   }
	
   public void Subtraction(int x, int y) {
      z = x - y;
      System.out.println("The difference between the given numbers:"+z);
   }
   
   public void print() {
	   System.out.println("Print statement in superclass");
   }
}

//Sub Class
public class Inheritance extends Calculation {
   public void multiplication(int x, int y) {
      z = x * y;
      System.out.println("The product of the given numbers:"+z);
   }
   
   //Using super to differentiate between same method name
   public void print() {
	   System.out.println("Print statement in subclass");
	   super.print();

   }
	
   public static void main(String args[]) {
      int a = 20, b = 10;
      Inheritance demo = new Inheritance();
      demo.addition(a, b);
      demo.Subtraction(a, b);
      demo.multiplication(a, b);
      demo.print();
   }
}