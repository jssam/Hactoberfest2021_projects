from tkinter import *
import random
from tkinter import messagebox

root = Tk()
root.title('match game')
root.geometry("500x500")

# create our matches
matches = [
	1,1,
	2,2,
	3,3,
	4,4,
	5,5,
	6,6
]
# shuffle our matches
random.shuffle(matches)

my_frame= Frame(root)
my_frame.pack(pady=10)

# Define some variables
count = 0
answer_list = []
answer_dict = {}
gameFinish = 0

# win function
def win():
	button_list = [b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11]
	for button in button_list:
		button.config(bg="Yellow")



# main function
def something(b, number):
	global count, answer_dict, answer_list, gameFinish

	if b["text"] == ' ' and count < 2:
		b["text"] = matches[number]
		# add nuber to answer list
		answer_list.append(number)
		# add button and number to answer dict
		answer_dict[b] = matches[number]
		# increment out count
		count += 1

	# start to determine corrent or not
	if len(answer_list) == 2:
		if matches[answer_list[0]] == matches[answer_list[1]]:
			for key in answer_dict:
				key["state"] = "disabled"
			count = 0
			answer_list = []
			answer_dict = {}
			gameFinish+=1
		else:
			count = 0
			answer_list = []

			# pop up box
			messagebox.showinfo("No Match!", "incorrect")

			#reser the button
			for key in answer_dict:
				key["text"] = " "

			answer_dict = {}

	if gameFinish >=6:
		messagebox.showinfo("Congrasulations you won", "Completed")
		win()
		root.destroy()



b0 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b0, 0))
b1 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b1, 1))
b2 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b2, 2))
b3 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b3, 3))
b4 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b4, 4))
b5 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b5, 5))
b6 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b6, 6))
b7 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b7, 7))
b8 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b8, 8))
b9 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b9, 9))
b10 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b10, 10))
b11 = Button(my_frame, text=' ', font=("Helvetica", 20), height=3, width=6, command=lambda: something(b11, 11))



b0.grid(row=0, column=0)
b1.grid(row=0, column=1)
b2.grid(row=0, column=2)
b3.grid(row=0, column=3)

b4.grid(row=1, column=0)
b5.grid(row=1, column=1)
b6.grid(row=1, column=2)
b7.grid(row=1, column=3)

b8.grid(row=2, column=0)
b9.grid(row=2, column=1)
b10.grid(row=2, column=2)
b11.grid(row=2, column=3)


root.mainloop()