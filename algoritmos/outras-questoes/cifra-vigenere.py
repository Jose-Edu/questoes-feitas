# open
def cript(ent, entchave):
    final = ""
    abc = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
    for char, charc in zip(ent, entchave):
        if char.isalpha():
            
            if char.upper() == char:
                char = abc[abc.find(char.lower())+abc.find(charc)].upper()
            else:
                char = abc[abc.find(char)+abc.find(charc)]

        final += char

    print(final)

def decript(ent, entchave):
    final = ""
    abc = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
    for char, charc in zip(ent, entchave):
        if char.isalpha():
            
            if char.upper() == char:
                char = abc[abc.find(char.lower())-abc.find(charc)].upper()
            else:
                char = abc[abc.find(char)-abc.find(charc)]

        final += char

    print(final)

while True:
    x =input("digite a opção [e/d]")

    if x == 'e':
        ent = input("digite o texto: ")
        entchave = input("digite a chave: ")

        while len(entchave) < len(ent):
            for char in entchave:
                entchave += char
        
        cript(ent, entchave)
    elif x == 'd':
        ent = input("digite o texto: ")
        entchave = input("digite a chave: ")

        while len(entchave) < len(ent):
            for char in entchave:
                entchave += char
        
        decript(ent, entchave)
    else:
        break
