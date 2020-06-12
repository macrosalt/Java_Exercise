package Assignment1;

class Water {
    Water first;
    Water second;
    Water third;
    String name;
    public Water(String x) {
        name = x;
    }
    void cap() {
        first = new Water(name + "1");
        second = new Water(name + "2");
        third = new Water(name + "3");
    }

    void taste() {
        System.out.println("Three main sources of the water is " + first.name + ", " + second.name + ", " + third.name + ".");
    }
}

class Bottle {
    public static void main() {
        Water sample = new Water("origin");
        sample.cap();
        sample.taste();
    }
}

public class Task5 {
    public static void main(String[] args) {
        Bottle.main();
    }
}
