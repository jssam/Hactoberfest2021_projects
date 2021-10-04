/*
Vertical Sum of a Tree.
Using DFS
 */

import java.util.*;

// Node which has value , left child and right child
class Node{
    int data ;
    Node left,right;
    Node(int data){
        this.data = data;
        left = right = null;
    }
}

public class VerticalSumTree {


    public static void verticalSumUtil(Node root , int key, TreeMap<Integer, Integer> treeMap){
        if(root==null) return; 

        // Mapping each vertical to a key to get the vertical sum recursively

        verticalSumUtil(root.left , key-1 , treeMap);

        int prevSum =  treeMap.get(key)==null ? 0:treeMap.get(key);
        treeMap.put(key , prevSum + root.data);


        verticalSumUtil(root.right , key+1 , treeMap);

    }

    public static void verticalSum(Node root){
        if(root == null)
            return;
        TreeMap<Integer, Integer> treeMap = new TreeMap<>();
        verticalSumUtil(root, 0 , treeMap);
        System.out.println(treeMap);

    }
    public static void main(String args[]){
        //Tree
        Node root = new Node(1);
        root.left = new Node(2);
        root.right = new Node(3);
        root.left.left = new Node(4);
        root.left.right = new Node(5);
        root.right.left = new Node(6);
        root.right.right = new Node(7);
        // Constructed Tree : 
        /* Simple Example.
                 | | | 1 | | |
                 | |2|   |3| |
                 |4| |5 6| |7|
                 --------------   
 Vertical sum  : |4|2| 12|3|7|
        
         */
        verticalSum(root);

    }

}
