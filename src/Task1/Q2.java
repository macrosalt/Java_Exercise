package Task1;

public class Q2 {
    static int countWords(String str) {
        if (str == null || str.length() == 0) return 0;
        int ans = 0;
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == ' ') ans++;
        }
        return ans + 1;
    }

    public static void main(String[] args) {
        String str = "I am a dog. I wanna run.";
        System.out.println(countWords(str));
    }
}
