public class Solution {

    public static long ipsBetween(String start, String end) {
        String[] ip1Parts = start.split("\\.");
        String[] ip2Parts = end.split("\\.");
        long one = (Long.valueOf(ip2Parts[0]) - Long.valueOf(ip1Parts[0])) * 256 * 256 * 256;
        long two = (Long.valueOf(ip2Parts[1]) - Long.valueOf(ip1Parts[1])) * 256 * 256;
        long three = (Long.valueOf(ip2Parts[2]) - Long.valueOf(ip1Parts[2])) * 256;
        long four = (Long.valueOf(ip2Parts[3]) - Long.valueOf(ip1Parts[3]));
        return one + two + three + four;
    }

    public static void main(String[] args) {

    }
}
