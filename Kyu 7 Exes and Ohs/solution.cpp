#include <iostream>
#include <string>

bool XO(std::string s)
{
    int x = 0, o = 0;
    for (int i = 0; i < s.size(); i++)
    {
        char c = std::tolower(s[i]);
        if (c == 'x')
            x++;
        else if (c == 'o')
            o++;
    }
    return x == o;
}

int main()
{
    std::string testCases[] = {"xo", "xxOo", "xxxm", "Oo", "ooom", "xxxoo"};
    for (std::string s : testCases)
    {
        std::cout << s << ": " << (XO(s) ? "True" : "False") << std::endl;
    }
}