from collections import Counter

ent = Counter(input("digite o texto: ").upper())
print(Counter(ent))
final = ""

for c in ent:
    if int(ent[c]) > 1:
        final += str(ent[c])
    final += str(c)

print(final)