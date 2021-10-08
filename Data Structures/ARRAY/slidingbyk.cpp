#include <bits/stdc++.h>
using namespace std;

int maxsk(int a[], int n, int k)
{
    int res = INT_MIN;
    for (int i = 0; i < (n - k + 1); i++)
    {
        int sum = 0;
        for (int j = i; j < k + i; j++)
        {
            sum += a[j];
            res = max(res, sum);
        }
    }
    return res;
}

int maxsk1(int a[],int n,int k)
{ int currsum=0;
    for(int i=0;i<k;i++)
    currsum+=a[i];

    int maxsum=currsum;
    for(int i=k;i<n;i++)
    {
        currsum+=a[i]-a[i-k];
        maxsum=max(maxsum,currsum);
    }
    return maxsum;
}

int main()
{
    int a[] = {1, 8, 30, -5, 20, 7};
    int n = sizeof(a) / sizeof(a[0]);
    cout << maxsk(a, n, 3) << endl;
    cout << maxsk1(a, n, 3) << endl;
    return 0;
}