#question link : https://leetcode.com/problems/evaluate-reverse-polish-notation/

class Solution:
    def evalRPN(self, tokens: List[str]) -> int:
        stk = []
        for i in tokens:
            if i=="+" or i=="/" or i=="*" or i=="-":
                right = stk.pop()
                left = stk.pop()
                res = int(eval(f"{left}{i}{right}"))
                stk.append(res)
            else:
                stk.append(i)
        return stk[0]