//Linked List program to insert the number at start and print the list

#include<iostream>
using namespace std;

//Node class to create a single node in the linked list
class Node{
    public:
    int Data;
    Node *Link;

    Node(int data){
        Data=data;
        Link=NULL;
    }
};

//function to insert the number at start of the list
void InsertLL(Node* &head,int data){
    Node *node1;
    node1=new Node(data);
    node1->Link=head;
    head=node1;
}

//Function to print the full list
void PrintLL(Node *head){
    Node *P_head=head;
    cout<<"The List is :\n";
    while(P_head!=NULL){
        cout<<P_head->Data<<" ";
        P_head=P_head->Link;
    }
    cout<<"\n";
}

//main function
int main(){
    int N,n;
    Node *head=NULL;
    cout<<"Enter the number of integers you want to insert :";
    cin>>N;
    for(int i=0;i<N;i++){
        cout<<"Enter the integer :";
        cin>>n;
        InsertLL(head,n);
    }   
    PrintLL(head);
}