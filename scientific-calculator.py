from tkinter import *


class calculate():

    def _init_(self):
        self.root = Tk()
        self.root.title("Calculator")
        self.root.geometry("290x260")

        self.root.maxsize(290, 260)
        self.root.minsize(290, 260)
        self.root.config(bg="grey")

        self.resultwindow = Entry(self.root,borderwidth=5, relief=SUNKEN)
        self.resultwindow.grid(row=0,column=0,columnspan=6,pady=5)
        self.resultwindow.config(font=("Times New Roman", 16))
        self.resultwindow.focus_set()  # Sets focus on the input text area

        # Buttons
        self.button1 = Button(self.root, text="1", width=3, command=lambda:self.ins('1'),relief=RAISED,bg='light green')
        self.button1.grid(row=1,column=0, padx=3, pady=3)
        self.button1.config(font=("Times New Roman", 16))

        self.button2 = Button(self.root, text="2", width=3, command=lambda:self.ins('2'),relief=RAISED,bg='light green')
        self.button2.grid(row=1, column=1, padx=3, pady=3)
        self.button2.config(font=("Times New Roman", 16))

        self.button3 = Button(self.root, text="3", width=3, command=lambda:self.ins('3'),relief=RAISED,bg='light green')
        self.button3.grid(row=1, column=2, padx=3, pady=3)
        self.button3.config(font=("Times New Roman", 16))

        self.button4 = Button(self.root, text="4", width=3, command=lambda:self.ins('4'),relief=RAISED,bg='light green')
        self.button4.grid(row=2, column=0, padx=3, pady=3)
        self.button4.config(font=("Times New Roman", 16))

        self.button5 = Button(self.root, text="5", width=3, command=lambda:self.ins('5'),relief=RAISED,bg='light green')
        self.button5.grid(row=2, column=1, padx=3, pady=3)
        self.button5.config(font=("Times New Roman", 16))

        self.button6 = Button(self.root, text="6", width=3, command=lambda:self.ins('6'),relief=RAISED,bg='light green')
        self.button6.grid(row=2, column=2, padx=3, pady=3)
        self.button6.config(font=("Times New Roman", 16))

        self.button7 = Button(self.root, text="7", width=3, command=lambda:self.ins('7'),relief=RAISED,bg='light green')
        self.button7.grid(row=3, column=0, padx=3, pady=3)
        self.button7.config(font=("Times New Roman", 16))

        self.button8 = Button(self.root, text="8", width=3, command=lambda:self.ins('8'),relief=RAISED,bg='light green')
        self.button8.grid(row=3, column=1, padx=3, pady=3)
        self.button8.config(font=("Times New Roman", 16))

        self.button9 = Button(self.root, text="9", width=3, command=lambda:self.ins('9'),relief=RAISED,bg='light green')
        self.button9.grid(row=3, column=2, padx=3, pady=3)
        self.button9.config(font=("Times New Roman", 16))

        self.button0 = Button(self.root, text="0", width=3, command=lambda: self.ins('0'),relief=RAISED,bg='light green')
        self.button0.grid(row=4, column=0, padx=3, pady=3)
        self.button0.config(font=("Times New Roman", 16))

        self.button_open = Button(self.root, text="(", width=3, command=lambda: self.ins('('),relief=RAISED)
        self.button_open.grid(row=4, column=1, padx=3, pady=3)
        self.button_open.config(font=("Times New Roman", 16))

        self.button_close = Button(self.root, text=")", width=3, command=lambda: self.ins(')'),relief=RAISED)
        self.button_close.grid(row=4, column=2, padx=3, pady=3)
        self.button_close.config(font=("Times New Roman", 16))

        # Operations Buttons

        self.buttonplus = Button(self.root, text="+", width=3, command=lambda:self.ins('+'),relief=RAISED)
        self.buttonplus.grid(row=1, column=3, padx=3, pady=3)
        self.buttonplus.config(font=("Times New Roman", 16))

        self.buttonminus = Button(self.root, text="-", width=3, command=lambda:self.ins('-'),relief=RAISED)
        self.buttonminus.grid(row…
