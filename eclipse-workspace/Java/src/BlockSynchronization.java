import java.lang.Exception;

class Table1  
{      
 void printTable(int n){    
   synchronized(this){//synchronized block    
     for(int i=1;i<=5;i++){    
      System.out.println(n*i);    
      try{    
       Thread.sleep(400);    
      }catch(Exception e){System.out.println(e);}    
     }    
   }    
 }//end of the method    
}    
    
class MyThread_1 extends Thread{    
	Table1 t;    
	MyThread_1(Table1 t){    
		this.t=t;    
	}    
	public void run(){    
		t.printTable(5);    
	}    
    
}    
class MyThread_2 extends Thread{    
	Table1 t;    
	MyThread_2(Table1 t){    
		this.t=t;    
	}    
	public void run(){    
		t.printTable(100);    
	}    
}    
    
public class BlockSynchronization{    
	public static void main(String args[]){    
		Table1 obj = new Table1();//only one object    
		MyThread_1 t1=new MyThread_1(obj);    
		MyThread_2 t2=new MyThread_2(obj);    
		t1.start();    
		t2.start();    
	}    
}    