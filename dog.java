package animals;

public class dog extends pet_animals {
    public dog(String name, int age){
        super(name, age);
    }
    public void doCommand() {
        System.out.println("Bark");
    }
}
