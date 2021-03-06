class Skiplist {
private:
    struct ListNode {
        int val;
        ListNode* next = nullptr;
        ListNode* down = nullptr;
        ListNode() {};
        ListNode(int v, ListNode* n, ListNode* d) : val(v), next(n), down(d) {}
    };
    
    ListNode dummy;
    ListNode* head;
public:
    Skiplist(): head(&dummy) {
        
    }
    
    bool search(int target) {
        for(ListNode* node = head; node; node = node->down) {
            for(; node->next && node->next->val < target; node = node->next) {}
            if(node->next && node->next->val == target) {
                return true;
            }
        }
        return false;
    }
    
    void add(int num) {
        vector<ListNode*> pre_nodes;
        for(ListNode* node = head; node; node = node->down) {
            for(; node->next && node->next->val < num; node = node->next) {}
            pre_nodes.push_back(node);
        }
        
        bool rnd = true;
        ListNode* down = nullptr, *pre = nullptr;
        for(; rnd && !pre_nodes.empty(); rnd = rand() & 3) {
            pre = pre_nodes.back();
            pre->next = new ListNode(num, pre->next, down);
            down = pre->next;
            pre_nodes.pop_back();
        }
    }
    
    bool erase(int num) {
        bool found = false;
        for(ListNode* node = head; node; node = node->down) {
            for(; node->next && node->next->val < num; node = node->next) {}
            if(node->next && node->next->val == num) {
                found = true;
                auto* p = node->next;
                node->next = p->next;
                delete p;
            }
        }
        return found;        
    }
};
