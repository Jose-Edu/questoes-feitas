#email validator
import re

regex = r'^[^\s@]+@[^\s@]+\.[^\s@]{2,3}(\.[^\s@]{2})?$'
print(re.search(regex, input("Digite um email: ")) != None)