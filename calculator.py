import re

print("Calculator")
print("Type 'quit' to exit")

prev = 0
run = True

def performMath():
    global run
    global prev

    if prev == 0:
        equation = input("Enter equation:")
    else:
        equation = input(str(prev))

    if equation == 'quit':
        print("Quiting...")
        run = False
    else:
        equation = re.sub('[a-zA-Z,.:()" "]', '', equation)

        if prev == 0:
            prev = eval(equation)
        else:
            prev = eval(str(prev) + equation)
    

while run:
    performMath()
