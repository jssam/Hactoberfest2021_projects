# Write a program which accepts a sequence of comma-separated numbers from user and generate a list and tuple with those numbers
values = input("Write some numbers separated with comma:")
list = values.split(",") 
tuple = tuple(list)
print('List:',list)
print('Tuple:',tuple)
