#password validator (8 digits+, mix:caps,noncaps,simbols)
import re

ent = input("digite uma senha: ")

if len(ent) >= 8 and not ent.isalpha() and not ent.isalnum() and not ent.isdigit() and not ent.islower() and not ent.isupper() and re.search(r'[^\w]+', ent) != None and re.search(r'[0-9]+', ent) != None:
    print(True)
else:
    print(False)