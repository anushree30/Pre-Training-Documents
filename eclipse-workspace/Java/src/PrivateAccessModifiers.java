
class Data {
	    private String name;

	    // getter method
	    public String getName() {
	        return this.name;
	    }
	    // setter method
	    public void setName(String name) {
	        this.name= name;
	    }
	}
	public class PrivateAccessModifiers {
	    public static void main(String[] main){
	        Data d = new Data();

	        // access the private variable using the getter and setter
	        d.setName("Private Access Modifier Example");
	        System.out.println(d.getName());
	    }
	
}
