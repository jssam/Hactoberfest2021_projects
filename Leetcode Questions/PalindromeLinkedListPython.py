# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

from collections import deque

class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        q = deque()
        s = []
        
        curr = head
        
        while curr != None:
            q.append(curr.val)
            s.append(curr.val)
            curr=curr.next
            
        if len(q)!=len(s):
            return False
            
        while q and s:
            if q.popleft() != s.pop():
                return False
        return True