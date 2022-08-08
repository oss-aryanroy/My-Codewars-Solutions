import std/strutils

var 
    testCases: array[6, string] = ["xo", "xxOo", "xxxm", "Oo", "ooom", "xxxoo"]

proc XO(testCase: string): bool = 
    var x = 0
    var o = 0
    for i in toLowerAscii(testCase):
        if i == 'x':
            x = x + 1
        elif i == 'o':
            o = o + 1
    return x == o


for testCases in testCases:
    echo XO(testCases)

    
    