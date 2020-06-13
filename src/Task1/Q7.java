package Task1;

public class Q7 {
    static int secondLarge(int[] arr) {
        int first = Integer.MIN_VALUE;
        int second = Integer.MIN_VALUE;
        for (int cur : arr) {
            if (cur > first) {
                second = first;
                first = cur;
            } else if (cur > second) {
                second = cur;
            }
        }
        return second;
    }

    public static void main(String[] args) {
        int[] arr1 = {1, 2, 3, 4, 5};
        int[] arr2 = {5, 4, 3, 2, 1};
        System.out.println(secondLarge(arr1));
        System.out.println(secondLarge(arr2));
    }
}
