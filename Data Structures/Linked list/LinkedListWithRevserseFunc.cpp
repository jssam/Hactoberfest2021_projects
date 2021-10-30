
#include <iostream>
using namespace std;
class Node{
  public:
  int data;
  Node* link;
  Node(int val){
      data=val;
      link=NULL;
  }
};
class LinkedList{
  public:
  void display(Node* head){
      Node* temp = head;
      if(temp==NULL){
          cout<<"LINKED LIST IS EMPTY";
          return;
      }
      while(temp!=NULL){
          cout<<temp->data<<"-->";
          temp=temp->link;
      }
  cout<<"NULL";
  }
  
  void insert(Node* &head,int data,int pos){
      Node* temp = head;
      Node* newNode = new Node(data);
      if(temp==NULL){
          head=newNode;
          return;
      }
      if(pos==0){
          newNode->link=head;
          head=newNode;
          return;
      }
      for(int i=0;i<pos-1;i++){
          temp=temp->link;
      }
      newNode->link=temp->link;
      temp->link=newNode;
  }
    
    void DELETE(Node* &head,int pos){
        Node* temp = head;
        if(head==NULL){
            cout<<"LinkedList is EMPTY";
            return;
        }
        if(pos==0){
            head=head->link;
            return;
        }
        for(int i=0;i<pos-1;i++){
            temp=temp->link;
        }
        temp->link=temp->link->link;
    }
    
    Node* reverse(Node* &head){
        Node* prev=NULL;
        Node* curr = head;
        while(curr!=NULL){
            Node* temp = curr->link;
            curr->link=prev;
            prev=curr;
            curr=temp;
        }
        return prev;
    }
    
};


int main()
{
   
Node* head = NULL;
LinkedList ls;
ls.insert(head,10,0);
ls.insert(head,12,1);
ls.insert(head,14,2);
ls.insert(head,16,3);
ls.insert(head,18,4);
ls.display(head);
cout<<"\n";
ls.display(ls.reverse(head));
cout<<"\n";

    return 0;
}
