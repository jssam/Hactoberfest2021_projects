# -*- coding: utf-8 -*-
"""
Created on Fri Oct  8 12:27:42 2021

@author: DHIRAJ 
"""


# Python program to create a simple GUI
# weight converter using Tkinter


from tkinter import *


# Create a GUI window
window = Tk()

# Function to convert weight
# given in kg to grams, pounds
# and ounces
def convertfrom_kg():
	
	# convert kg to gram
	gram = float(e2_value.get())*1000
	
	# convert kg to pound
	pound = float(e2_value.get())*2.20462
	
	# convert kg to ounce
	ounce = float(e2_value.get())*35.274
	
	# Enters the converted weight to
	# the text widget
	tt1.delete("1.0", END)
	tt1.insert(END,gram)
	
	tt2.delete("1.0", END)
	tt2.insert(END,pound)
	
	tt3.delete("1.0", END)
	tt3.insert(END,ounce)

# Create the Label widgets
ee1 = Label(window, text = "Enter the weight in Kg")
ee2_value = StringVar()
ee2 = Entry(window, textvariable = e2_value)
ee3 = Label(window, text = 'Gram')
ee4 = Label(window, text = 'Pounds')
ee5 = Label(window, text = 'Ounce')

# Create the Text Widgets
tt1 = Text(window, height = 1, width = 20)
tt2 = Text(window, height = 1, width = 20)
tt3 = Text(window, height = 1, width = 20)

# Create the Button Widget
bb1 = Button(window, text = "Convert", command = convertfrom_kg)

# grid method is used for placing
# the widgets at respective positions
# in table like structure
ee1.grid(row = 0, column = 0)
ee2.grid(row = 0, column = 1)
ee3.grid(row = 1, column = 0)
ee4.grid(row = 1, column = 1)
ee5.grid(row = 1, column = 2)
tt1.grid(row = 2, column = 0)
tt2.grid(row = 2, column = 1)
tt3.grid(row = 2, column = 2)
bb1.grid(row = 0, column = 2)

# Start the GUI
window.mainloop()
