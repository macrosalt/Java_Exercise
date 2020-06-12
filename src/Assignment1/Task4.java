package Assignment1;

class Pencil {
    public final class Paper {
        public static final int threeH = 300;
        public static final int fourH = 400;
        public static final int fiveH = 500;
        public static final int sixH = 600;
        public static final int sevenH = 700;
    }
}

class Book {
    void buy(int x) {
        System.out.println("Buy " + x + " books");
    }
    void sell(int y) {
        System.out.println("Sell " + y + " books");
    }
}

class Pen {
    void buy(int x, int y) {
        System.out.println("Buy " + x * y + " dollars pens");
    }
    void sell(int x, int y) {
        System.out.println("Sell " + x * y + " dollars pens");
    }
}

public class Task4 {
    public static void main(String[] args) {
        Book book = new Book();
        Pen pen = new Pen();
        book.buy(Pencil.Paper.fiveH);
        book.sell(Pencil.Paper.fourH);
        pen.buy(1, 100);
        pen.sell(1, 50);
    }
}
