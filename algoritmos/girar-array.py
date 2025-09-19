entArray = input("digite o array: ").split(',')
entPassos = int(input("digite o número de passos: "))

arrayFinal = [None for _ in range(len(entArray))]

for num in range(len(entArray)):
    
    posFinal = num + entPassos

    while posFinal > len(entArray)-1:
        posFinal %= len(entArray)

    arrayFinal[posFinal] = entArray[num]

final = ""

for x in arrayFinal:
    final += x+','

final = final[:-1]

print(final)