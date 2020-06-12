package Assignment1;

abstract class cooler {
    String name = "cooler";
    int num;

    cooler() {
        num = 0;
    }

    void turnOn(int x) {
        num += x;
        System.out.println("There are " + x + " " + name + "s.");
    }

    void turnOff(int y) {
        if (y > num) {
            System.out.println("Invalid action");
        } else {
            num -= y;
            System.out.println("There are " + num + " " + name + "s left.");
        }
    }
}

class Fan extends cooler {
    Fan() {
        name = "fan";
    }
}

class Ac extends cooler {
    Ac() {
        name = "Ac";
    }
}

public class Task6 {
    public static void main(String[] args) {
        Fan fan = new Fan();
        Ac ac = new Ac();
        fan.turnOn(2);
        fan.turnOff(4);
        fan.turnOff(1);
        ac.turnOn(2);
        ac.turnOff(2);
    }
}
