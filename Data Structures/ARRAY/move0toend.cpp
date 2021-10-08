#include <bits/stdc++.h>
using namespace std;

void swap(int *x, int *y)
{
    int *t;
    t = x;
    x = y;
    y = t;
}

void mze(int arr[], int n)
{
    int count = 0;
    for (int i = 0; i < n; i++)
    {
        if (arr[i] != 0)
        {
            swap(arr[i], arr[count]);
            count++;
        }
    }
}

int main()
{
    int arr[] = {0, 12, 3, 0, 0, 45, 7, 0, 7, 6};
    int n = sizeof(arr) / sizeof(arr[0]);
    mze(arr, n);
    for (auto x : arr)
        cout << x << " ";
    return 0;
}