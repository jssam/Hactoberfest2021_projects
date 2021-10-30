// Diagonal Traversal of a Binary Tree (GfG)
// Difficulty - Medium
//https://practice.geeksforgeeks.org/problems/diagonal-traversal-of-binary-tree/1

vector<int> diagonal(Node *root)
{
    // your code here
    vector<int> ans;
    if (root == NULL)
        return ans;
    queue<Node *> q;
    q.push(root);

    while (!q.empty())
    {
        Node *k = q.front();
        q.pop();
        ans.push_back(k->data);

        if (k->left)
            q.push(k->left);

        while (k->right)
        {
            ans.push_back(k->right->data);

            k = k->right;

            if (k->left)
                q.push(k->left);
        }
    }
    return ans;
}