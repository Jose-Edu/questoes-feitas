ent = int(input("digite um número: "))
saida = []

x = -1
while len(saida) < ent:
    x += 1
    saida.append(x)

    digits = [int(d) for d in str(x)]
    if len(digits) <= 1: continue

    c = None
    for d in digits:
        if c == None: 
            c = d
            continue
    
        if d not in (c+1, c-1):
            saida.pop()
            break

        c = d

print(saida)