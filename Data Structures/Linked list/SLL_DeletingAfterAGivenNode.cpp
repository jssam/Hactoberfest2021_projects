#include <iostream>
#include <iomanip>
#include <string>
#include <cmath>
#include <climits>
#include <vector>
#include <set>
#include <algorithm>
using namespace std;
#define ll             long long int
#define ld             long double
#define mod            1000000007
#define endl           "\n"
#define vi             vector<ll>
#define vs             vector<string>
#define pii            pair<ll, ll>
#define ump            unordered_map
#define mp             map
#define pq_max         priority_queue<ll>
#define pq_min         priority_queue<ll,vi,greater<ll>
#define ff             first
#define ss             second
#define mid(l,r)       (l+(r-l)/2)
#define loop(i,a,b)    for(int i=(a); i <=(b);i++)
#define looprev(i,a,b) for(int i=(a); i >=(b);i--)
#define clr(val)       memset(val,0,sizeof(val))
#define what_is(x)     cerr << #x << " is " << x << endl; 
#define OJ             \
    freopen("input.txt", "r", stdin); \
    freopen("output.txt", "w", stdout);
#define FIO ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL);
 
class node{
    public:
    int data;
    node* prev;
    node* next;

    node(int val, node* head){
        data = val;
        prev = NULL;
        next = NULL; 
    }
};

void InsertAtTail(node* &head, int val){

    node* n = new node(val,head);
    if (head == NULL){
        n -> prev = NULL;
        n -> next = NULL;
        head = n;
        return;
    }
    node* temp = head;
    while(temp -> next != NULL){
        temp = temp -> next;
    }
    temp -> next = n;
    n -> prev = temp;
    n -> next = NULL;
}

void DeletingAfterGivenNode(node* &head, int num){

    node* temp = head;
    node * pu = NULL;
    while(temp -> data != num){
        temp = temp -> next;
    }
    pu = temp -> next;
    temp -> next = temp -> next -> next -> prev;
    temp -> next -> next -> prev = pu;
    delete pu;
}

void display(node* head){

    node* temp = head;
    while(temp != NULL){
        cout<<temp -> data<<" ";
        temp = temp -> next;
    }
}

int main() 
{
    node* head = NULL;
    InsertAtTail(head,1);
    InsertAtTail(head,2);
    InsertAtTail(head,3);
    InsertAtTail(head,4);
    DeletingAfterGivenNode(head,2);
    display(head);
 
return 0;
   
}
