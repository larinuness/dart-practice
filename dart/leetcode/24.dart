//linked list

// class Solution {
//     public ListNode swapPairs(ListNode head) {
//         ListNode initialHead = new ListNode(1);
//         initialHead.next = head;
//         ListNode current = initialHead;

//         while(current.next != null && current.next.next != null){
//             ListNode temporary1 = current.next;
//             ListNode temporary2 = current.next.next;

//             current.next = temporary2;
//             temporary1.next = temporary2.next;
//             temporary2.next = temporary1;
            
//             current = temporary1;
//         }

//         return initialHead.next;
//     }
// }