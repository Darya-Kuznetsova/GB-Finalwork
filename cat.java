package animals;

public class cat extends pet_animals {
    public cat(String name, int age) {
        super(name, age);
    }
    public void doCommand(){
        System.out.println("Meow");
    }
}
