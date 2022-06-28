
public class Strings {
	public static void main(String args[]) {
		
		//printing a string
	      String helloString = "Printing a string";  
	      System.out.println( helloString );
	      
	      //Length of palindrome
	      String palindrome = "Dot saw I was Tod";
	      int len = palindrome.length();
	      System.out.println( "String Length of a palindrome is : " + len );
	      
	      //Concatenating a string
	      String string1 = "saw I was ";
	      System.out.println("Dot " + string1 + "Tod");
	      
	      //compareTo method compares two strings lexicographically. 
	      String str1 = "Strings are immutable";
	      String str2 = "Strings are immutable";
	      String str3 = "Integers are not immutable";
	      
	      int result = str1.compareTo( str2 );
	      System.out.println(result);
	      
	      result = str2.compareTo( str3 );
	      System.out.println(result);
	      
	      result = str3.compareTo( str1 );
	      System.out.println(result);
	   }


}
