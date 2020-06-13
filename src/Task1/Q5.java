package Task1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public class Q5 {
    static void iterateArrayList(ArrayList list) {
        for (int i = 0; i < list.size(); i++) System.out.print(list.get(i) + " ");
        System.out.println();
        System.out.println("---------");
        Iterator it = list.iterator();
        while (it.hasNext()) System.out.print(it.next() + " ");
        System.out.println();
        System.out.println("---------");
        for (Object ptr : list) System.out.print(ptr + " ");
        System.out.println();
        System.out.println("---------");
    }

    public static void main(String[] args) {
        ArrayList list1 = new ArrayList(Arrays.asList(1, 2, 3, 4));
        ArrayList list2 = new ArrayList(Arrays.asList("123", "abc", "sdf"));
        iterateArrayList(list1);
        iterateArrayList(list2);
    }
}
