#reverse binary tree
from libs.binary_tree import *

my_bt = BST(Node(19))
my_bt.BSTfill(10)

my_bt.ordenedPrint()

print()

def reverse(node):
    if not node:
        return
    
    node.left, node.right = node.right, node.left
    reverse(node.left)
    reverse(node.right)

reverse(my_bt.root)

my_bt.ordenedPrint()