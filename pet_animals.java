package animals;

public abstract class pet_animals extends animals{
    public pet_animals(String name, int age){
        super(name, age);
    }
    public abstract void doCommand();
}
