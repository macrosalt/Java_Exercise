package Task1;

public class Q8 {
    static String removeSpace(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != ' ') sb.append(str.charAt(i));
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        String str1 = "i am a cat. i eat fish.";
        System.out.println(removeSpace(" "));
        System.out.println(removeSpace(str1));
    }
}
