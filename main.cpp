
#include <iostream>
using namespace std;

class Node
{
private:
    int key;
    Node* left;
    Node* right;
    int height;


public:

    Node()
    {
        left=NULL;
        right=NULL;
        height=0;
    }

    Node(int d)
    {
        key=d;
    }

    void setkey(int d)
    {
        key=d;
    }

    void setleft(Node* address)
    {
        left=address;
    }

    void setright(Node* address)
    {
        right=address;
    }

    Node* getleft()
    {
        return left;
    }

    Node* getright()
    {
        return right;
    }

    int getkey()
    {
        return key;
    }

    void setheight(int h)
    {
        height=h;
    }

    int getheight()
    {
        return height;
    }




};


class BST
{
private:
    Node* root;
public:
    BST()
    {
        root=NULL;
    }

    Node* getroot()
    {
        return root;
    }

    void setroot(Node* address)
    {
        root=address;
    }

    int max(int a,int b)
    {
        if(a>b)
            return a;
        else
            return b;
    }


    int getheight2(Node* node)
    {
        if(node==NULL)
            return -1;
        else
            return node->getheight();
    }



    int getBalanceFactor(Node* node)
    {
        return getheight2(node->getleft())-getheight2(node->getright());
    }

    Node* rightRotate(Node* node)
    {
        cout<<"Right Rotating Node "<<node->getkey()<<endl;
        Node* parent=node->getleft();
        node->setleft(parent->getright());
        parent->setright(node);
        int parenth=max(getheight2(parent->getleft()),getheight2(parent->getright()))+1;
        parent->setheight(parenth);
        int nodeh=max(getheight2(node->getleft()),getheight2(node->getright()))+1;
        node->setheight(nodeh);
        cout<<"Returning Node "<<parent->getkey()<<"as parent"<<endl;
        return parent;
    }


    void add(int key)
    {
        root=add1(root,key);
    }
    Node* add1(Node* temp,int key)
    {
        if(temp==NULL)
        {
            temp=new Node(key);
        }
        else if(key<temp->getkey())
        {
            temp->setleft(add1(temp->getleft(),key));
            int bf=getBalanceFactor(temp);
            if(bf==2 || bf==-2)
            {
                if(key<temp->getleft()->getkey())
                {
                    temp=rightRotate(temp);
                }
            }
        }
        else if(key>temp->getkey())
        {
            temp->setright(add1(temp->getright(),key));
        }

        temp->setheight(max(getheight2(temp->getleft()),getheight2(temp->getright()))+1);


        return temp;
    }
//-------------------------------------------------------------
    void Insert(int d)
    {
        if(root==NULL)
        {
            root= new Node(d);
            return;
        }
        else
        {
            Node* temp=root;
            while(true)
            {
                if(d<=temp->getkey())
                {
                    if(temp->getleft()==NULL)
                    {
                        temp->setleft(new Node(d));
                        return;
                    }
                    else
                    {
                        temp=temp->getleft();
                    }
                }
                if(d>temp->getkey())
                {
                    if(temp->getright()==NULL)
                    {
                        temp->setright(new Node(d));
                        return;
                    }
                    else
                    {
                        temp=temp->getright();
                    }
                }
            }
        }
    }



//SEARCHHHHHHHHHHHHHHHH
    void Search(int d)
    {
        if(root==NULL)
        {
            cout<<"No Node"<<endl;
            return;
        }
        else
        {
            Node* temp=root;
            while(true)
            {
                if(d<=temp->getkey())
                {
                    if(temp->getkey()==d)
                    {
                        cout<<"Present"<<endl;
                        return;
                    }
                    else if(temp->getleft()==NULL)
                    {
                        cout<<"not present"<<endl;
                        return;
                    }
                    else
                    {
                        temp=temp->getleft();
                    }
                }
                if(d>temp->getkey())
                {
                    if(temp->getkey()==d)
                    {
                        cout<<"Present"<<endl;
                        return;
                    }
                    else if(temp->getright()==NULL)
                    {
                        cout<<"not present"<<endl;
                        return;
                    }
                    else
                    {
                        temp=temp->getright();
                    }
                }

            }
        }
    }




//PRE ORDER DISPLAY
    void displayp(Node *r)
    {
        if(r==NULL)
        {
            return;
        }
        else
        {
            cout<<r->getkey()<<endl;
            displayp(r->getleft());
            displayp(r->getright());
        }
    }
    void predisplay()
    {
        displayp(root);
    }




//POST ORDER DISPLAY
    void displaypo(Node *r)
    {
        if(r==NULL)
        {
            return;
        }
        else
        {
            displaypo(r->getleft());
            displaypo(r->getright());
            cout<<r->getkey()<<endl;
        }
    }
    void postdisplay()
    {
        displaypo(root);
    }



//IN ORDER DISPLAY
    void displayin(Node *r)
    {
        if(r==NULL)
        {
            return;
        }
        else
        {
            displayin(r->getleft());
            cout<<r->getkey()<<endl;
            displayin(r->getright());
        }
    }
    void indisplay()
    {
        displayin(root);
    }

};


int main()
{
    BST b;
    b.add(5);
    b.add(4);
    b.add(3);
    b.predisplay();
    return 0;
}
