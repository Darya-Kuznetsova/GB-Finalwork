package animals;

public class humster extends pet_animals{
    public humster(String name, int age){
        super(name, age);
    }
    public void doCommand() {
        System.out.println("Run");
    }
}
