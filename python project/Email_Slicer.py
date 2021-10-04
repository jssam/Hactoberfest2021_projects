email = input("Enter Your Email: ").strip()
username = email[:email.index('@')]
domain = email[email.index('@') + 1:]
# This program is created by Harsh Sharma