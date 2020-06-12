package Assignment1;

class Parent {
    String name = "Parent";
    Parent subA;
    Parent subB;

    Parent() {
        System.out.println("Null point set");
        System.out.println("No subA");
        System.out.println("No subB");
    }

    Parent(int x, int y, int z) {
        if (x + y != z) {
            System.out.println("Not valid input!");
        } else {
            switch (x) {
                case 0:
                    subA = null;
                    System.out.println("No subA");
                    break;
                case 1:
                    subA = new Parent();
                    System.out.println("One subA");
                    break;
                case 2:
                    subA = new Parent(1, 1, 2);
                    System.out.println("Two SubA");
                    break;
                case 3:
                    subA = new Parent(1, 2, 3);
                    System.out.println("Three SubA");
                    break;
                default:
                    subA = new Parent(0, 1, 2);
                    System.out.println("Too many subA, discard");
                    break;
            }
            if (y == 0) {
                subB = null;
                System.out.println("No subB");
            } else {
                subB = new Parent();
                System.out.println("Have subB");
            }
        }

    }

    void setName(int a, int b, int c, String str) {
        System.out.print(name + " to ");
        name = str;
        System.out.println(str);
    }
}

class Left extends Parent {
    Left() {
        this.setName(0, 0 , 0, "Left");
    }
    Left(int a, int b, int c) {
        super(a, b, c);
        this.setName(0, 0 , 0, "Left");
    }
}

class Right extends Parent {
    Right() {
        this.setName(0, 0 , 0, "Right");
    }
    Right(int a, int b, int c) {
        super(a, b, c);
        this.setName(0, 0 , 0, "Right");
    }
}

public class Task2 {
    public static void main(String[] args) {
        Left ex1 = new Left();
        Left ex2 = new Left(1, 2, 3);
        Right ex3 = new Right();
        Right ex4 = new Right(3, 3, 6);
    }
}
