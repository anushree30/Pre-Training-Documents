import java.io.*;

public class TryCatch_Exception {


   public static void main(String args[]) {
	   
	   //multiple try catch block
       int a[]=new int[5];    

	   try{    
           
           System.out.println(a[10]);  
          }catch(ArithmeticException e){  
              System.out.println("Arithmetic Exception occurs");  
          }catch(ArrayIndexOutOfBoundsException e){  
              System.out.println("ArrayIndexOutOfBounds Exception occurs");  
          }finally {
              a[0] = 6;
              System.out.println("First element value: " + a[0]);
              System.out.println("The finally statement is executed");
           }
   }

}
