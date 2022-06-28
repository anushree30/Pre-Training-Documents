
public class Loop {
	public static void main(String args[]) {
		
		//For loop
	      int [] numbers = {10, 20, 30, 40, 50};
	      System.out.println("Printing numbers using For loop-");
	      for(int num : numbers ) {
	         System.out.print( num );
	         System.out.print(",");
	      }
	    
	      System.out.print("\n"+ "\n");
	     
	      //While Loop
	      int nums = 10;
		  System.out.println("Printing numbers using While loop");

	      while( nums < 20 ) {

	         System.out.print( nums );
	         nums++;
	         System.out.print(",");
	      }
	      System.out.print("\n"+ "\n");
	      
	      //Do-While Loop
	      int number = 10;
		  System.out.println("Printing numbers using While loop");

	      do {
	         System.out.print(number );
	         number++;
	         System.out.print(",");
	      }while( number < 20 );
	   }


}
