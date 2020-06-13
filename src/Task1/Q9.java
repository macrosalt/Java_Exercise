package Task1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Q9 {
    List<Integer> missingInt(int[] nums) {
        Arrays.sort(nums);
        List<Integer> ans = new ArrayList<>();
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] != nums[i - 1] && nums[i] != nums[i - 1]) {
                for (int j = nums[i - 1] + 1; j < nums[i]; j++) ans.add(j);
            }
        }
        return ans;
    }

    public static void main(String[] args) {
        int[] arr1 = {1, 3, 5, 6};
        int[] arr2 = {-2, 0, 1, 5};
        Q9 test = new Q9();
        System.out.println(test.missingInt(arr1));
        System.out.println(test.missingInt(arr2));
    }
}
