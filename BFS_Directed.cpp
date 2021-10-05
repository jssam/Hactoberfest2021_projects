#include<iostream>
#include<stdlib.h>
#include<queue>
#include<bits/stdc++.h>
#include<vector>

using namespace std;

struct Edge
{
    int start,end;
    Edge():start(0),end(0){};
    Edge(int st,int en):start(st),end(en){};
};

struct Node
{
    int data,level,pre;
    Node():data(0),level(-1),pre(-1){};
    Node(int x):data(x),level(-1),pre(-1){};
    Node(Node &temp):data(temp.data),level(temp.level),pre(temp.pre){};
};

vector<Node *> q;

class Graph
{
    int nodes,edges,*visited,**adj_mat;
    vector<Edge *> edges_arr;
    vector<Node *> nodes_arr;
public:
    Graph(){};
    Graph(int node,int edge):nodes(node),edges(edge)
    {
        visited = new int[nodes]{0};
        adj_mat = new int * [nodes];
        for(int i=0;i<nodes;i++)
            adj_mat[i] = new int[nodes]{0};
    }
    void get_data(void);
    void display_tree(void);
    Graph * converter(void);
    void display_adj_mat(void);
};


void Graph::display_adj_mat(void)
{
    cout<<endl;
    for(int i=0;i<nodes;i++)
    {
        for(int j=0;j<nodes;j++)
            cout<<adj_mat[i][j];
        cout<<endl;
    }
}


void Graph::display_tree(void)
{
    for(auto it = edges_arr.begin();it!=edges_arr.end();it++)
      cout<<endl<<(*it)->start<<" "<<(*it)->end;
}


Graph * Graph::converter(void)
{
    Graph * ptr = new Graph(nodes,nodes-1);
    for(int j=0;j<nodes_arr.size();j++)
    if(!ptr->visited[j])
    {
    Node *temp = new Node(*nodes_arr[j]);
    temp->level=0;
    ptr->visited[temp->data]=1;
    q.push_back(temp);
    while(!q.empty())
    {
        Node * dequeue = q[0];
        q.erase(q.begin());
        for(int i=0;i<nodes;i++)
        {
            if((adj_mat[dequeue->data][i])&&(!(ptr->visited[i])))
            {
                temp = new Node(*nodes_arr[i]);
                temp->level = dequeue->level+1;
                temp->pre = dequeue->data;
                ptr->visited[temp->data]=1;
                q.push_back(temp);
            }
        }
        ptr->visited[dequeue->data]=2;
        cout<<dequeue->data<<" ";
        ptr->nodes_arr.push_back(dequeue);
        if(dequeue->pre!=-1)
        {
            ptr->adj_mat[dequeue->pre][dequeue->data]=1;
            Edge * temp_edge = new Edge(dequeue->pre,dequeue->data);
            ptr->edges_arr.push_back(temp_edge);
        }
    }
    }
    return ptr;
}


void Graph::get_data(void)
{
    cout<<"\nEnter number of nodes ";
    cin>>nodes;
    cout<<"\nEnter number of edges ";
    cin>>edges;
    adj_mat = new int * [nodes];
    for(int i=0;i<nodes;i++)
    {
        adj_mat[i] = new int[nodes]{0};
        Node * temp = new Node(i);
        nodes_arr.push_back(temp);
    }
    for(int i=0;i<edges;i++)
    {
        cout<<"\nEnter edge "<<i+1<<": ";
        int st,en;
        cin>>st>>en;
        if(st>=nodes||en>=nodes)
        {
            cout<<"\nInvalid input ";
            i--;
        }
        else
        {
            Edge *temp = new Edge(st,en);
            edges_arr.push_back(temp);
            adj_mat[st][en] = 1;
        }
    }
}


main()
{
    Graph G;
    G.get_data();
    Graph * T = G.converter();
    T->display_adj_mat();
    T->display_tree();
}

