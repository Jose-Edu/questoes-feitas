def rec(n):
    if n <= 9:
        print(n)
        return
    
    arg = [int(char) for char in str(n)]

    print(sum(arg))
    return rec(sum(arg))

ent = int(input("digite um número: "))
rec(ent)