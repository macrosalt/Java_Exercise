package Task1;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class Q10 {
    static String findMostFreq(String str) {
        String[] strs = str.split(" ");
        HashMap<String, Integer> map = new HashMap<>();
        for (String cur : strs) {
            map.put(cur, map.getOrDefault(cur, 0) + 1);
        }

        int max = 0;
        String ans = "";
        for (Object ptr : map.entrySet()) {
            Map.Entry<String, Integer> cur = (Map.Entry) ptr;
            if (cur.getValue() > max) {
                max = cur.getValue();
                ans = cur.getKey();
            }
        }
        return ans;
    }

    static String readFile(String path) {
        StringBuilder sb = new StringBuilder();
        try {
            FileInputStream fin = new FileInputStream(path);
            int ch = fin.read();
            while (ch != -1) {
                if (ch == ' ' || (ch >= 'a' && ch <= 'z')) sb.append((char) ch);
                else if (ch >= 'A' && ch <= 'Z') sb.append((char) (ch - 'A' + 'a'));
                else if (ch == '\n') sb.append(' ');
                ch = fin.read();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            return sb.toString();
        }
    }

    public static void main(String[] args) {
        // txt file path
        String path = "src/Task1/text.txt";
        String str = readFile(path);
        System.out.println(str);
        String[] strs = str.split(" ");
        System.out.println(findMostFreq(str));
    }
}
