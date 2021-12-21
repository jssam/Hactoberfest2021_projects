global b
global c
global d
global o
global v
def bill(b,c,d,o,v):
    print"*****************************************************************************************************************************************************"
    print"                                                           CASH MEMO                                  "
    print"*****************************************************************************************************************************************************"
    print"Bill no.:",random.randint(1800,2000),"\t\t\t\t\t  Date:15/02/2016"
    print"_____________________________________________________________________________________________________________________________________________________"
    f=str(raw_input("Enter your name:"))
    print"PARTICULARS \t\t QUANTITY \t\t RATE \t\t AMOUNT"
    sum=0
    for a in range(o):
        rate=int(v[c-1]*d)
        print a+1,"television"," \t\t\t",d,"\t\t\t",rate,"\t\t\t",rate
        rate=0
    print "GRAND TOTAL:"
    return sum
import random
print"      PPPP      A         RRRR          A        DDDD    IIIII      SSS     EEEEE     "
print"      P   P     AA        R   R         AA       D   D     I      S         E         "
print"      PPPP     AAAA       RRRR         AAAA      D   D     I        SS      EEE       "
print"      P       A    A      R   R       A    A     D   D     I           S    E         "
print"      P      A      A     R    R     A      A    DDDD    IIIII     SSS      EEEEE     "
print
print"                           E L E C T R O N I C S"        
print
print
a=str(raw_input("Press enter to continue:"))
v=[25000,22400,19000,20000,52000,45000]
inp=''
o=0
while inp=='':
    if a=='':
        print"LIST OF ITEMS"
        print"\n ************************"
        print
        print"\n 1. Television"
        print"\n 2. Washing Machine"
        print"\n 3. Refrigerator"
        print"\n 4. Microwave oven"
        print"\n 5. Mixer Grinder"
        b=int(raw_input("Enter your choice:"))
        if b==1:
            print"TELEVISION (T.V.)"
            print"   ________________ "
            print"  /________________/"
            print" !|                |!"
            print" !|                |!"
            print" !|                |!"
            print" !|                |!"
            print" !|                |!"
            print" !|________________|!"
            print" !.    .    .    .  !"
            print" !__________________!"
            print
            print"\n     LIST OF COMPANIES"
            print"\n   --------------------------------"
            print"\n (1) LG            "
            print"\n (2) Samsung       "
            print"\n (3) Videocon      "
            print"\n (4) Onida         "
            print"\n (5) Sony          "
            print"\n (6) Panasonic     "
            c=int(raw_input("Enter the company's number:"))
            d=int(raw_input("Enter the number of tv you want to buy:"))
            o+=1
            inp=str(raw_input("Want to buy more items(Press enter for yes otherwise press n):"))
            z=bill(b,c,d,o,v)
        
        if b==2:
            print"\n WASHING MACHINE"
            print"   ________________"
            print" !\\_______________\\"
            print" ! \\ .    .    .   \\"
            print" !   !________________!"
            print" !   !                !"
            print" !   !                !"   
            print" !   !                !"
            print" !   !                !"
            print" !   !                !"
            print" !   !                !"
            print" !   !                !"
            print" !   !                !"
            print"  \\ !________________!"        
            print
            print"\n    LIST OF COMPANIES"
            print"\n  --------------------------------"
            print"\n(1) LG           "
            print"\n(2) Whirlpool    "
            print"\n(3) Videocon     "
            print"\n(4) Samsung      "
            print"\n(5) IFB          "
            e=int(raw_input("Enter the company's number:"))
            f=int(raw_input("Enter the number of washing machine you want to buy:"))
            inp=str(raw_input("Want to buy more items Press enter for yes otherwise press n):"))
        if b==3:
            print"\n REFRIGERATOR"
            print"  ______________"
            print" / ! ||         !"
            print"!  ! ||         !"
            print"!  ! ||         !"
            print"!  !____________!"
            print"!  ! ||         !"
            print"!  ! ||         !"
            print"!  ! ||         !"
            print"!  !            !"
            print"!  !            !"
            print"!  !            !"
            print"!  !            !"
            print"!  !            !"
            print"!  !____________!"
            print"! /_____________/"
            print
            print"\n LIST OF COMPANIES"
            print"\n-------------------"
            print"\n(1) Whirlpool    "
            print"\n(2) Godrej       "
            print"\n(3) LG           "
            print"\n(4) Kenstar      "
            print"\n(5) Hitachi      "
            g=int(raw_input("Enter the company's number:"))
            h=int(raw_input("Enter the number of refrigerator you want to buy:"))
            inp=str(raw_input("Want to buy more items(Press enter for yes otherwise press n):"))
        if b==4:
            print"MICROWAVE OVEN"
            print"   _________________"
            print"  /_________________/"
            print"!|               | ..!"
            print"!|   _*@*@*@* _  | ..!"
            print"!|    \______/   | ..!"
            print"!|______________ | ..!"
            print"!____________3:00____!"
            print
            print"\n LIST OF COMPANIES"
            print"\n------------------------------"
            print"\n (1) Samsung         "
            print"\n (2) Whirlpool       "
            print"\n (3) Philips         "
            print"\n (4) LG              "
            print"\n (5) Videocon        "
            print"\n (6) Kenstar         "
            i=int(raw_input("Enter the company's number:"))
            j=int(raw_input("Enter the number of microwave you want to buy:"))
            inp=str(raw_input("Want to buy more items(Press enter for yes otherwise press n):"))
        if b==5:
            print"   MIXER GRINDER" 
            print
            print"          !---------!          "
            print"          !_________!          "
            print"           \       /--|        "
            print"            \     /   |        "
            print"           __\___/_   |        "
            print"          !        !           "
            print"   _______!        !           "
            print"  !    @           !           "
            print"  !________________!           "
            print
            print" LIST OF COMPANIES"
            print"------------------------------"
            print"\n (1) Philips"
            print"\n (2) IFB    "
            print"\n (3) Kenstar"
            print"\n (4) Sumeet "
            k=str(raw_input("Enter the company's number:"))
            l=str(raw_input("Enter the number of microwave you want to buy:"))
            inp=str(raw_input("Want to buy more items(Press enter for yes otherwise press n):"))




            
            




        
        
        
        

   

