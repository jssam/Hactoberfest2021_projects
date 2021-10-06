/* Implementation of Depth Search Algorithm using Adjacency List */
/*  
Input : 
    7 7
    1 2
    1 3
    2 4
    2 5
    2 6
    2 7
    7 3
           
    output : 1 2 4 5 6 7 3 
*/

#include<bits/stdc++.h>
using namespace std;
const int N = 1e5+2;
vector<int> adj[N];
bool visited[N];

void dfs(int node){
    //preorder
    visited[node] = true;
    cout<<node<<" ";


    // inorder
    vector<int> :: iterator it;
    for(it = adj[node].begin();it != adj[node].end();it++){
        if(visited[*it]);
        else{
            dfs(*it);
        }
    }
}
int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    int n,m; //n--> no of nodes and m--> no of edges
    cin>>n>>m;
    for(int i=0;i<N;i++){
        visited[i] = false;
    }
    int x,y;
    for(int i=0;i<m;i++){
        cin>>x>>y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    dfs(1);  // 1 is the vertex or node to start the traversing
    return 0;
}


