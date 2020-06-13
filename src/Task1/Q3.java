package Task1;

import java.util.*;

public class Q3 {
    static void iterateMap(HashMap map) {
        Iterator<Map.Entry> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry cur = it.next();
            System.out.println("key: " + cur.getKey() + " value: " + cur.getValue());
        }
        System.out.println("-------------");
        for (Object ptr : map.entrySet()) {
            Map.Entry cur = (Map.Entry) ptr;
            System.out.println("key: " + cur.getKey() + " value: " + cur.getValue());
        }
    }

    public static void main(String[] args) {
        HashMap map = new HashMap();
        map.put(1, 2);
        map.put(3, 4);
        map.put(5, 6);
        iterateMap(map);
    }
}
