c = 0

ent = input("digite a senha: ")

for char in ent:
    if char.isdigit():
        c += int(char)

if ent[-1] == 'A' and c == 11:
    print("senha válida")
else:
    print("senha inválida")