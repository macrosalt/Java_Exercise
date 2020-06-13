package Task1;

public class Q4 {
    static boolean isPalindrome(int input) {
        String str = Integer.toString(input);
        return isPalindrome(str);
    }

    static boolean isPalindrome(String str) {
        if (str == null || str.length() == 0) return true;
        int left = 0;
        int right = str.length() - 1;
        while (left < right) {
            if (str.charAt(left) != str.charAt(right)) return false;
            left++;
            right--;
        }
        return true;
    }

    public static void main(String[] args) {
        System.out.println(isPalindrome(1234));
        System.out.println(isPalindrome(12521));
        System.out.println(isPalindrome("1234"));
        System.out.println(isPalindrome("12521"));
    }
}
