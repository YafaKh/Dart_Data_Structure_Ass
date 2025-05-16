//Linked Lists
class Node {
  int data;
  Node? next;

  Node(this.data);
}

/* Challenge 1: Print in Reverse 
 Create a function that prints the nodes of a linked list in reverse order. */

void printReverse(Node? node) {
  if (node == null) return;
  printReverse(node.next);
  print(node.data);
}

/*Challenge 2: Find the Middle Node 
Create a function that finds the middle node of a linked list. 
 */

//Note: if the linked list has an even number of nodes, my function will return both middle nodes

List<Node> findMiddleNodes(Node? head) {
  if (head==null) return [];

  Node? slow =head;
  Node? fast= head;
  Node? prevSlow= head;

  while (fast !=null &&fast.next!= null) {
    prevSlow = slow;
    slow =slow!.next;
    fast =fast.next!.next;
  }

  // If fast is null, the list has even number of elements
  if (fast== null &&prevSlow!= null) {
    return [prevSlow, slow!]; // Two middle nodes
  }
  return [slow!]; // One middle node
}

/*
Challenge 3: Reverse a Linked List  
Create a function that reverses a linked list. You do this by manipulating the nodes so that they’re linked in the other direction.  
 */

Node? reverseLinkedList(Node? head) {
  Node? prev= null;
  Node? current= head;
  Node? next;
  while(current!= null){
    next= current.next;  
    current.next = prev;        
    prev= current;             
    current= next;        
  }
  return prev;
}

/*
 Challenge 4: Remove All Occurrences 
 Create a function that removes all occurrences of a specific element from a linked list. The implementation is similar to the removeAfter method that you implemented earlier.
 */

Node? removeAllOccurrences(Node? head, int num) {
  // Remove matching nodes at the beginning
  while (head != null && head.data == num) {
    head = head.next;
  }

  Node? current= head;
  Node? prev= null;

  while (current!= null) {
    if (current.data == num) {
      // Skip current node
      prev!.next = current.next;
      current = current.next;
    } else{
      prev = current;
      current =current.next;
    }
  }

  return head;
}

main()
{
  
}
