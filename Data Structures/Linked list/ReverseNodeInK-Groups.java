class Solution {
    public ListNode reverseKGroup(ListNode head, int k) {
        int n = countNodes(head);
        ListNode[] nodes = new ListNode[n];
        ListNode node = head;
        int i = 0;
        while(node != null) {
            nodes[i] = node;
            node = node.next;
            nodes[i++].next = null;
        }
        for(i = 0; i+k-1< n; i+=k) {
            for(int j = i, l = Math.min(n-1, i+k-1); j < l; j++, l--) {
                ListNode tmp = nodes[j];
                nodes[j] = nodes[l];
                nodes[l] = tmp;
            }
        }
        node = nodes[0];
        for(i = 1; i < n; i++) {
            node.next = nodes[i];
            node = node.next;
        }
        return nodes[0];
    }
    
    private int countNodes(ListNode node) {
        ListNode tmp = node;
        int n = 0;
        while(tmp != null) {
            n++;
            tmp = tmp.next;
        }
        return n;
    }
}
