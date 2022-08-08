public class Solution {

    public static boolean XO(String s) {
        int x = 0, o = 0;
        s = s.toLowerCase();
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == 'x') {
                x++;
            } else if (s.charAt(i) == 'o') {
                o++;
            }
        }
        return x == o;
    }

    public static void main(String[] args) {
        String[] testCases = { "xo", "xxOo", "xxxm", "Oo", "ooom", "xxxoo" };
        for (String testCase : testCases) {
            System.out.println(testCase + ": " + XO(testCase));
        }
    }
}