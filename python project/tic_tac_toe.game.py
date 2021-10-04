
from itertools import permutations
from itertools import combinations
from graphics import *

def getRes():
   
    resArr=[]
    seq = permutations(['7','8','9'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['6','5','4'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['3','2','1'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['1','4','7'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['2','5','8'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['3','6','9'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['1','5','9'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    seq = permutations(['3','5','7'])
    for p in list(seq):
        tt=''.join(p)
        resArr.append(tt)
    return resArr

def check(clkvals, rescombs):
    playArr=[]
    combi = permutations(clkvals, 3)
    
    for c in list(combi):
        tt=''.join(c)
        playArr.append(tt)
      
    for p in playArr:
        if(p in rescombs):
            
            return True
    

def main():
   
    rescombs=getRes()
    
    workArea = GraphWin('TicTacToe', 300, 350) 
    workArea.setBackground('yellow')
   
    ln=Line(Point(10,100),Point(280,100))
    ln.setWidth(3)
    ln.draw(workArea)
    ln=Line(Point(10,190),Point(280,190))
    ln.setWidth(3)
    ln.draw(workArea)
   
    ln=Line(Point(100,10),Point(100, 280))
    ln.setWidth(3)
    ln.draw(workArea)
    ln=Line(Point(190,10),Point(190,280))
    ln.setWidth(3)
    ln.draw(workArea)

    arrf=[]
    arrt=[]
    cnt1=0
    cnt2=0
    x=10
    y=10
    i=0
    j=8
    p1=[' ']
    p2=[' ']
    pl="X"
    
    
    while j>=0:
            arrf.append(Point(x,y))
            arrt.append(Point(x+90,y+90))
            x=x+90
            j=j-1
            i=i+1
            if (i==3):       
                x=10
                y=y+90
                i=0
    clk=True
    numv=""
    t1=Text(Point(1,1),p1)
    t2=Text(Point(1,1),p1)
    finres=False
    cnt=1
    inBox=False
    mid=Point(0,0)    

    
    while cnt<=9:
        
        ch=workArea.getMouse()
        
        if (ch.x >arrf[0].x  and ch.x <arrt[0].x and ch.y >arrf[0].y  and ch.y<arrt[0].y):
            numv="9"
            mid=Point(arrf[0].x +45,arrf[0].y+45)
            inBox=True
        if (ch.x >arrf[1].x  and ch.x <arrt[1].x and ch.y >arrf[1].y  and ch.y<arrt[1].y):
            numv="8"
            mid=Point(arrf[1].x +45,arrf[1].y+45)
            inBox=True
        if (ch.x >arrf[2].x  and ch.x <arrt[2].x and ch.y >arrf[2].y  and ch.y<arrt[2].y):
            numv="7"
            mid=Point(arrf[2].x +45,arrf[2].y+45)
            inBox=True
        if (ch.x >arrf[3].x  and ch.x <arrt[3].x and ch.y >arrf[3].y  and ch.y<arrt[3].y):
            numv="6"
            mid=Point(arrf[3].x +45,arrf[3].y+45)
            inBox=True
        if (ch.x >arrf[4].x  and ch.x <arrt[4].x and ch.y >arrf[4].y  and ch.y<arrt[4].y):
            numv="5"
            mid=Point(arrf[4].x +45,arrf[4].y+45)
            inBox=True
        if (ch.x >arrf[5].x  and ch.x <arrt[5].x and ch.y >arrf[5].y  and ch.y<arrt[5].y):
            numv="4"
            mid=Point(arrf[5].x +45,arrf[5].y+45)
            inBox=True
        if (ch.x >arrf[6].x  and ch.x <arrt[6].x and ch.y >arrf[6].y  and ch.y<arrt[6].y):
            numv="3"
            mid=Point(arrf[6].x +45,arrf[6].y+45)
            inBox=True
        if (ch.x >arrf[7].x  and ch.x <arrt[7].x and ch.y >arrf[7].y  and ch.y<arrt[7].y):
            numv="2"
            mid=Point(arrf[7].x +45,arrf[7].y+45)
            inBox=True
        if (ch.x >arrf[8].x  and ch.x <arrt[8].x and ch.y >arrf[8].y  and ch.y<arrt[8].y):
            numv="1"
            mid=Point(arrf[8].x +45,arrf[8].y+45)
            inBox=True
        
        if inBox:
            txt=Text(mid,pl)
            txt.setSize(36)
            txt.draw(workArea)
            inBox=False
            cnt=cnt+1
        
        if pl=="X":
            p1.append(numv)
            if len(p1)>=3:
                finres=check(p1,rescombs)
            if finres:
                t1=Text(Point(workArea.getWidth()/2,320),"Player "+pl+" wins")
                t1.setSize(20)
                t1.setTextColor("red")
                t1.draw(workArea)
                clk=False
                break
            pl="O"
        else:
            cnt2+=1
            p2.append(numv)
            if len(p2)>=3:
                finres=check(p2,rescombs)
            if finres:
                t1=Text(Point(workArea.getWidth()/2,320),"Player " +pl+ " wins")
                t1.setSize(20)
                t1.setTextColor("red")
                t1.draw(workArea)
                clk=False
                break
            pl="X"
              
    if clk:
        t1=Text(Point(workArea.getWidth()/2,320),"Game Draw")
        t1.setSize(20)
        t1.setTextColor("red")
        t1.draw(workArea)
         

main()    
