
class ProMethod {
	    // protected method
    protected void display() {
        System.out.println("This is a protected method");
    }
}

class ProtectedAccessModifier extends ProMethod {
    public static void main(String[] args) {

        // create an object of Dog class
    	ProtectedAccessModifier protect = new ProtectedAccessModifier();
         // access protected method
        protect.display();
    }
}


