# string balance

def isBal(ent):
    c = 0
    for char in ent:
        if char == '(':
            c+=1
        elif char == ')':
            if c <= 0:
                return False
            c-=1
    
    return c == 0


ent = input("digite uma string:")
print(isBal(ent))