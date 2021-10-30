``class Solution {
    public int size(ListNode head){
        if(head==null)
            return 0;
        int n=0;
        while(head!=null){
            n++;
            head=head.next;
        }
        return n;
    }
    
    public ListNode rotateRight(ListNode head, int k) {
        if(head==null)
            return head;
        int n=size(head);
        if(k>=n)
            k=k%n;
        
        if(k==0)
            return head;
        
        
        ListNode phead=head;
        ListNode nhead=null;
        ListNode tmp=head;
        ListNode curr=head;
        
        
        
        for(int i=0;i<k;i++){
            tmp=tmp.next;
        }
        while(tmp.next!=null){
            curr=curr.next;
            tmp=tmp.next;
        }
        
        nhead=curr.next;
        curr.next=null;
        
        curr=nhead;
        while(curr.next!=null){
            curr=curr.next;
        }
        curr.next=phead;
        
        return nhead;
        
    }
}``
