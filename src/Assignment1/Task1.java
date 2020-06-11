package Assignment1;

class ABC {
    int a = 200;
    public ABC() {
        System.out.println("Default instance");
    }

    public ABC(int x) {
        System.out.println("with parameter:" + x);
    }

    public ABC(int x, int y) {
        System.out.println("With two parameter: X" + x + " Y " + y);
    }

    public ABC(int x, int y, int z) {
        System.out.println("With two parameter: X " + x + " Y " + y + " Z " + z);
    }
}

public class Task1 {
    public static void main(String[] args) {
        ABC tmp = new ABC();
        tmp = new ABC(1);
        tmp = new ABC(1, 2);
        tmp = new ABC(1, 2, 3);
    }
}
