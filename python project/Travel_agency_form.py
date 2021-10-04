from tkinter import *


root=Tk()


root.geometry("644x344")

Label(root,text="WELCOME TO MY TOUR",font="comicsanms 13 bold").grid(row=0,column=3)

def getval():
    print("SUBMITING")
    print(f"{nameentry.get(),ageentry.get(),stateentry.get(),cityentry.get(),foodservicevalue.get()}")
    with open("records.txt","a") as f:
        f.write(f"{nameentry.get(),ageentry.get(),stateentry.get(),cityentry.get(),foodservicevalue.get()}\n")


# labeling

name=Label(root,text="NAME")
age=Label(root,text="AGE")
state=Label(root,text="STATE")
city=Label(root,text="CITY")

# packing of labels

name.grid(row=1,column=2)
age.grid(row=2,column=2)
state.grid(row=3,column=2)
city.grid(row=4,column=2)

# making variables

namevalue=StringVar()
agevalue=StringVar()
statevalue=StringVar()
cityvalue=StringVar()
foodservicevalue=IntVar()

# making of entries

nameentry=Entry(root,textvariable="namevalue")
ageentry=Entry(root,textvariable="agevalue")
stateentry=Entry(root,textvariable="statevalue")
cityentry=Entry(root,textvariable="cityvalue")

# packing the entries

nameentry.grid(row=1,column=3)
ageentry.grid(row=2,column=3)
stateentry.grid(row=3,column=3)
cityentry.grid(row=4,column=3)


# checkbox
foodservice=Checkbutton(text="BOOK",variable=foodservicevalue)
foodservice.grid(row=5,column=3)


# button
Button(text="SUBMIT TO PANCHAL TRAVELS",command=getval,relief=SUNKEN,fg="red",bg="black").grid(row=7,column=3)

root.mainloop()