# Cifra de cezar

entTxt = input("Digite um texto: ")
entCount = int(input("Digite um número:"))

abc = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"

while entCount > 26:
    entCount %= 26

final = ""

for char in entTxt:
    if char.isalpha():
        
        if char.upper() == char:
            char = abc[abc.find(char.lower())+entCount].upper()
        else:
            char = abc[abc.find(char)+entCount]

    final += char

print(final)