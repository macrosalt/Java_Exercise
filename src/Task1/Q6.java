package Task1;

public class Q6 {
    static String findDuplicates(String str) {
        int[] map = new int[256];
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cur = str.charAt(i);
            if (map[cur] == 1) sb.append(cur);
            map[cur]++;
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        String str1 = "123456asd";
        String str2 = "1112223311$$%";
        System.out.println(findDuplicates(str1));
        System.out.println(findDuplicates(str2));
    }
}
