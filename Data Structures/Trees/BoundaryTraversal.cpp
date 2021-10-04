// Boundary Traversal of a Binary Tree (GfG)
// Difficulty - Medium
//https://practice.geeksforgeeks.org/problems/boundary-traversal-of-binary-tree/1

class Solution
{
public:
    void left(Node *root, vector<int> &leftt)
    {
        if (root == NULL)
            return;

        if (root->right == NULL && root->left == NULL)
            return;

        if (root->left)
        {

            leftt.push_back(root->data);
            left(root->left, leftt);
        }
        else if (root->right)
        {
            leftt.push_back(root->data);
            left(root->right, leftt);
        }
    }

    void right(Node *root, vector<int> &rightt)
    {
        if (root == NULL)
            return;

        if (root->right == NULL && root->left == NULL)
            return;

        if (root->right)
        {
            right(root->right, rightt);
            rightt.push_back(root->data);
        }
        else if (root->left)
        {

            right(root->left, rightt);
            rightt.push_back(root->data);
        }
    }

    void leaf(Node *root, vector<int> &leaff)
    {
        if (root == NULL)
            return;

        if (root->left)
            leaf(root->left, leaff);

        if (root->left == NULL && root->right == NULL)
        {
            leaff.push_back(root->data);
            return;
        }
        if (root->right)
            leaf(root->right, leaff);
    }

    vector<int> printBoundary(Node *root)
    {
        //Your code here

        vector<int> ans;
        ans.push_back(root->data);
        vector<int> leftt;
        if (root->left)
            left(root->left, leftt);

        vector<int> rightt;
        if (root->right)
            right(root->right, rightt);

        vector<int> leaff;
        leaf(root, leaff);

        for (int i = 0; i < leftt.size(); i++)
            ans.push_back(leftt[i]);

        for (int i = 0; i < leaff.size(); i++)
            ans.push_back(leaff[i]);

        for (int i = 0; i < rightt.size(); i++)
            ans.push_back(rightt[i]);

        return ans;
    }
};
