class node:
    def __init__(self,data):
        self.data=data
        self.next=None
class LinkedList:
    def __init__(self):
        self.head=None

    def add(self,data):
        new_node=node(data)
        new_node.next=self.head
        self.head=new_node
    def push(self,data):
        new_node=node(data)
        if self.head == None:
            self.head=new_node
        else:
            tmp = self.head
            while(tmp.next):
                tmp=tmp.next
            tmp.next=new_node
            new_node.next=None
    def place(self,data,index=0):
        tmp=self.head
        new_node=node(data)
        if(index==0 or index==1):
            new_node.next=tmp
            self.head=new_node
            return 
        for x in range(index-2):
            tmp=tmp.next
            if(tmp==None):
                print("position not in Linked-List")
                return
            elif(tmp.next==None):
                self.push(data)
                return
        tmp2=tmp.next.next
        tmp.next=None
        tmp.next=new_node
        new_node.next=tmp2

    def printList(self):
        tmp=self.head
        while tmp != None:
            print(tmp.data,end=" ")
            if(tmp.next!=None):
                print("->",end=" ")
            tmp=tmp.next

def generator():
    llist = LinkedList()
    llist.add(7)
    llist.add(1)
    llist.add(3)
    llist.add(2)
    llist.push(9)
    llist.place(12,6)
    llist.printList()
def main():
    generator()
#driver code
main()

