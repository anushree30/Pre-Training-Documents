public class Methods {
   
   public static void main(String[] args) {
      int a = 11;
      int b = 6;
      int c = maxFunction(a, b);
      System.out.println("Maximum Value = " + c);
   }

   /** returns the minimum of two numbers */
   public static int maxFunction(int n1, int n2) {
      int max;
      if (n1 > n2)
         max = n1;
      else
         max = n2;

      return max; 
   }
}