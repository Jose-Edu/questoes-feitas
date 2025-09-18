# Encontrar todas as palavra que começam com 'a' de um texto
ent = input("Digite uma string: ")

ent = ent.split(" ")
final = []

for word in ent:
    if word[0] == 'a':
        final.append(word)

print(final)