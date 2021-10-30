#include <iostream>
#include <string>
#include <vector>

using namespace std;


int solve(string s, string v) {
int n = s.length();
int m = v.length();
vector<vector<int>> dp(n + 1, vector<int>(m + 1));
vector<vector<int>> next(n + 1, vector<int>(m + 1));
for (int i = 0; i < n; i++) {
int prev = -1;
for (int j = 0; j < m; j++) {
if (s[i] == v[j]) {
prev = j;
}
next[i + 1][j + 1] = prev;
}
}
for (int i = 1; i <= n; i++) {
dp[i][0] = 1;
}
for (int i = 0; i <= m; i++) {
dp[0][i] = 1e9;
}
for (int i = 1; i <= n; i++) {
for (int j = 1; j <= m; j++) {
if (next[i][j] == -1) {
dp[i][j] = 1;
} else {
dp[i][j] = min(dp[i - 1][j], 1 + dp[i - 1][next[i][j]]);
}
}
}
return dp[n][m];
}

int main() {
    string s, v;
    cin >> s >> v;
    cout << solve(s, v);
}
