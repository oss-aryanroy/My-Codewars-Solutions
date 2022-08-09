#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int *getIPAddrArray(char *ip)
{
    char *tmpString = strdup(ip);
    char *token;
    int *ipAddr = (int *)calloc(4, sizeof(int));
    int count = 0;

    for (token = strtok(tmpString, "."); token != NULL; token = strtok(NULL, "."))
    {
        ipAddr[count++] = atoi(token);
    }
    free(tmpString);
    return ipAddr;
}

long ipsBetween(char *start, char *end)
{
    int *startIP = getIPAddrArray(start);
    int *endIP = getIPAddrArray(end);

    long ips = 0;

    for (int i = 0; i < 4; i++)
    {
        ips += (endIP[i] - startIP[i]) * pow(256, 3 - i);
    }
    free(startIP);
    free(endIP);
    return ips;
}

int main()
{
    char *testCases[3][2] = {
        {"10.0.0.0", "10.0.0.50"},
        {"20.0.0.10", "20.0.1.0"},
        {"0.0.0.0", "255.255.255.255"}};
    for (int i = 0; i < 3; i++)
    {
        printf("Range between %s - %s = %ld\n", testCases[i][0], testCases[i][1], ipsBetween(testCases[i][0], testCases[i][1]));
    }
}