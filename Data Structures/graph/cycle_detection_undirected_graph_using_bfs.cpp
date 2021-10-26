#include<iostream>
#include<bits/stdc++.h>
using namespace std;

bool checkForCycle(int s, int v, vector<int> adj[], vector<int> &visited) {
    queue<pair<int, int>> q;
    visited[s] = 1;
    q.push({s, -1});

    while(!q.empty()) {
        int node = q.front().first;
        int prev = q.front().second;
        q.pop();

        for(auto it : adj[node]) {
            if(!visited[it]) {
                visited[it] = 1;
                q.push({it, node});
            }
            else if(prev != it){
                return true;
            }
        }
    }
    return false;
}

bool isCycle(int v, vector<int> adj[]) {
    vector<int> vis(v+1, 0);

    for(int i=1; i<=v; i++) {
        if(!vis[i]) {
            if(checkForCycle(i, v, adj, vis))
                return true;
        }
    }
    return false;
}


int main() {
    int n,m;
    cout<<"Enter no. of Node : ";
    cin>>n;
    cout<<"Enter no. of edge : ";
    cin>>m;

    // declare the adjacent list
    vector<int> adj[n+1];

    cout<<"Enter u and v\n";
    // take edge as input
    for(int i=0; i<m; i++) {
        int u,v;
        cin>>u>>v;

        adj[u].push_back(v);
        adj[v].push_back(u);
    }
    cout<<isCycle(n, adj);
}

