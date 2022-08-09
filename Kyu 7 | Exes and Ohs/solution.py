def xo(s):
    return (lambda s: s.count('x') == s.count('o'))(s := s.lower())


if __name__ == '__main__':
    test_cases = ['xo', 'xxOo', 'xxxm', 'Oo', 'ooom', 'xxxoo']
    for test in test_cases:
        print(xo(test))
