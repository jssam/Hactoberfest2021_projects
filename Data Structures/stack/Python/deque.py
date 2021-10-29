# Python program to
# demonstrate stack implementation
# using collections.deque

from collections import deque

stack = deque()

# append() function to push
stack.append('Akshit')
stack.append('Abhishek')
stack.append('Manan')

print('Current stack:')
print(stack)

# pop() function to remove in LIFO order
print('\nElements popped from stack:')
print(stack.pop())
print(stack.pop())
print(stack.pop())

print('\nStack after elements are popped:')
print(stack)
