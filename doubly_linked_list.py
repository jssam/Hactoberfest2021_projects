class Node:
	def __init__(self,data=None,next=None,prev=None):
		self.data=data
		self.next=next
		self.prev=prev

	def setData(self,data):
		self.data=data

	def setNext(self,next):
		self.next=next

	def setPrev(self,prev):
		self.prev=prev

	def getData(self):
		return self.data

	def getNext(self):
		return self.next

	def getPrev(self):
		return self.prev

	def hasNext(self):
		return self.next!=None

	def hasPrev(self):
		return self.prev!=None
 # __str__ returns string equivalent of Object
	def __str__(self):
		return "Node[Data = %s]" %(self.data) 

def insertAtBeginning(self,data):
	newNode=Node(data,None,None)
	if(self.Head==None):
		self.head=self.tail=newNode
	else:
		newNode.setPrev(None)
		newNode.setNext(self.head)
		self.head.setPrev(newNode)
		self.head=newNode
		self.length+=1

def insertAtEnd(self,data):
	newNode=Node(data,None,None)
	if(self.head==None):
		self.head=newNode
	else:
		current=self.head
		while(current.getNext()!=None):
			current=current.getNext()
		current.setNext(newNode)
		newNode.setPrev(current)
		self.tail=newNode
			
#below is for insertion at a position
def getNode(self,index):
	currentNode=self.head
	if currentNode==None:
		return None
	i=0
	while i<index and currentNode.getNext()!=None:
		currentNode=currentNode.getNext()
		if currentNode==None:
			break
		i+=1
	return currentNode

def insertAtGivenPosition(self,index,data):
	newNode=Node(data)
	if self.head==None or index==0:
		self.insertAtBeginning(data)

	elif index>0:
		temp=self.getNode(index)
		if temp==None or temp.getNext()==None:
			self.insert(data)
		else:
			newNode.setNext(temp.getNext())
			newNode.setPrev(temp)
			temp.getNext().setPrev(newNode)
			temp.setNext(newNode)

# Time Complexity: O(n). In the worst case, we may need to insert the node at the end of the list. 
# Space Complexity: 0(1), for a temporary variable. 

