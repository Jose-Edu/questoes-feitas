def func1(ent):

    final = ""

    for number in ent:
        i = []
        p = []

        for d in range(0, len(number), 2):
            i.append(number[d])
        
        for d in range(1, len(number), 2):
            p.append(number[d])

        p.reverse()
        i.reverse()

        for _ in range(max((len(i), len(p)))):
            if len(p) > 0:
                final += p[-1]
                p.pop()
            
            if len(i) > 0:
                final += i[-1]
                i.pop()
        
        final += ' '
    
    print(final)
    

def func2(ent):
    final = ""
    for number in ent:
        for digit in number:
            if not int(digit) % 2 == 0:
                final += digit
        final += " "
    print(final)


ent = input("digite a entrada: ").split()

match int(ent[0]):
    
    case 1:
        func1(ent[2:])
        
    case 2:
        func2(ent[2:])
