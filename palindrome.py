def reverse (z):
    return z [::-1]

def checkPalindrome(z):
    rev = reverse (z)

    if (z == rev):
        return True
    return False

while True:
    z = str(input("please enter you words : "))
    a = checkPalindrome(z)

    if a == 1:
        print(z, "is palindrome")
    else:
        print(z, 'not palindrome')