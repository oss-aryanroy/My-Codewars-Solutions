import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// jump k - 1 indexes forward
// pop that item and add it to another list
// if index goes out of bound, do curr index + k - 1 - list size
// do it until the initial list is empty
// return the new list

public class Solution {
    public static <T> List<T> josephusPermutation(final List<T> items, final int k) {
        if (items.size() == 0)
            return items;

        List<T> retList = new ArrayList<T>();
        ArrayList<T> dupe = new ArrayList<T>(items);
        int forward = k - 1;
        int curr = 0;

        while (dupe.size() != 0) {
            curr += forward;
            if (curr >= dupe.size())
                curr %= dupe.size();
            retList.add(dupe.get(curr));
            dupe.remove(curr);
        }
        return retList;
    }

    public static void main(String[] args) {
        System.out.println(josephusPermutation(Arrays.asList(1, 2, 3, 4, 5, 6, 7), 3));
        System.out.println(josephusPermutation(Arrays.asList("C", "o", "d", "e", "W", "a", "r", "s"), 4));
        System.out.println(josephusPermutation(Arrays.asList(1, 2, 3, 4, 5, 6, 7), 2));
        System.out.println(josephusPermutation(Arrays.asList(), 3));
    }
}