using System;

public class Solution
{
    public static bool XO(string input)
    {
        var xCount = 0;
        var oCount = 0;
        input = input.ToLower();
        foreach (var c in input)
        {
            if (c == 'x')
            {
                xCount++;
            }
            else if (c == 'o')
            {
                oCount++;
            }
        }
        return xCount == oCount;
    }

    public static void Main(string[] args)
    {
        var testCases = new string[] { "xo", "xxOo", "xxxm", "Oo", "ooom", "xxxoo" };
        foreach (var testCase in testCases)
        {
            Console.WriteLine(XO(testCase));
        }
    }
}