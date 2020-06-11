package Assignment1;

class X {
    boolean busy;
    String reply = "Nice to meet you.";
    X() {
        busy = false;
    }
}

class Y {
    void call(X a) {
        if (a.busy) {
            System.out.println("I'm busy. Call me later");
        } else {
            a.busy = true;
            System.out.println(a.reply);
        }
    }

    void hangUp(X a) {
        a.busy = false;
        System.out.println("The phone is dead.");
    }
}

public class Task3 {
    public static void main(String[] args) {
        X receiver = new X();
        Y caller1 = new Y();
        Y caller2 = new Y();
        caller1.call(receiver);
        caller2.call(receiver);
        caller1.hangUp(receiver);
        caller2.call(receiver);
        caller2.hangUp(receiver);
    }
}
