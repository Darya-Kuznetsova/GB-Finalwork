package animals;

public class programm {
    public static void main(String[] args) {
        dog wolfspitz = new dog("Gabi", 3);
        cat siberian = new cat("Barsik", 12);
        humster peach = new humster("Foam", 1);
        horse horse = new horse("Josephine", 7);

        wolfspitz.doCommand();
        siberian.doCommand();
        peach.doCommand();
        horse.drive();

    }
}
