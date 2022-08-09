#include <stdio.h>
#include <stdbool.h>
#include <string.h>

bool XO(char *c)
{
    int x = 0, o = 0;
    for (int i = 0; i < strlen(c); i++)
    {
        if (c[i] == 'x' || c[i] == 'X')
        {
            x++;
        }
        else if (c[i] == 'o' || c[i] == 'O')
        {
            o++;
        }
    }
    return x == o;
}

int main()
{
    char testCases[6][10] = {"xo", "xxOo", "xxxm", "Oo", "ooom", "xxxoo"};
    for (int i = 0; i < 6; i++)
    {
        printf("%s\n", XO(testCases[i]) ? "true" : "false");
    }
}