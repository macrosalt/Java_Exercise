package Task1;

public class Q1 {
    static String reverseStr(String str) {
        StringBuffer sb = new StringBuffer();
        for (int i = str.length() - 1; i >= 0; i--) sb.append(str.charAt(i));
        return sb.toString();
    }

    public static void main(String[] args) {
        String str = "asdf";
        System.out.println(reverseStr(str));
    }

}
