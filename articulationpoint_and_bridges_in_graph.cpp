#include<bits/stdc++.h>
using namespace std;

const int N = 100;

vector<int>adj[N];
int dis[N], low[N];
int timer;

vector<int>AP;
vector<pair<int, int>>briges;

void dfs(int node, int par)
{
	dis[node] = low[node] = timer++;
	int num_child = 0;
	for (auto x : adj[node])
	{
		if (dis[x] == 0)
		{
			dfs(x, node);
			num_child++;
			low[node] = min(low[x], low[node]);

			//articulation point
			if ( par != 0 && low[x] >= dis[node]) {
				AP.push_back(node);
			}

			//bridges
			if (low[x] > dis[node]) {
				briges.push_back({node, x});
			}
		}
		else if (x != par)
		{
			low[node] = min(low[node], dis[x]);
		}
	}
	// separate case for root to be Articulation point
	if (par == 0 && num_child > 1)
		AP.push_back(node);


}


int main()
{
	int n, m;
	cin >> n >> m;
	for (int i = 0; i < m; i++)
	{
		int a, b;
		cin >> a >> b;
		adj[a].push_back(b);
		adj[b].push_back(a);
	}
	timer = 1;
	dfs(1, 0);

  
  //all articulation point in graph
	for (auto x : AP)
		cout << x << "\n";


  //all bridges in graph
	for (auto x : briges)
		cout << "(" << x.first << "," << x.second << ")" << "\n";

	return 0;
}
