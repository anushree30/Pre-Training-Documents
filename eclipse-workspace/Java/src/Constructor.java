
public class Constructor {
	
	   int x;
	   int c;
	   // Following is the non-parameterized constructor
	   Constructor(){
		   c=100;
	   }
	   
	   // Following is the parameterized constructor
	   Constructor(int i ) {
	      x = i;
	   }
	   public static void main(String args[]) {
		   Constructor non_para = new Constructor();
		   Constructor para = new Constructor(5);
		      System.out.println(" Parameterized constructor = " + para.x +"\n" +" Non-parameterized Contructor = " + non_para.c);
		   }
}
