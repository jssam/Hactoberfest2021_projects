import os

folder_name = input("Please enter a folder name")
print(f'Please confirm folder name:{folder_name}')
user_answer = input("Please enter Yes or No")
if 'yes'.startswith(user_answer.lower()):
    FolderName = folder_name
    folder_path = "D:/"
    os.mkdir = (folder_path)
    print(f'Creating {FolderName} folder')
elif 'no'.startswith(user_answer.lower()):
    print("Please rerun the project")

