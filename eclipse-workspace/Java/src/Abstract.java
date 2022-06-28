abstract class Teacher {
  abstract void learn();

  public void teach() {
    System.out.println("I can teach.");
  }
}

class Students extends Teacher {

  // provide implementation of abstract method
  public void learn() {
    System.out.println("i learn");
  }
}

class Abstract {
  public static void main(String[] args) {

    // create an object of Dog class
	Students d1 = new Students();

    d1.learn();
    d1.teach();
  }
}