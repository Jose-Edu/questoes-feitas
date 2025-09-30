import unicodedata

text = input("texto: ")
text = unicodedata.normalize('NFD', text)
text = "".join([x for x in text if unicodedata.category(x) != "Mn"])

print(text)