//collection of method for queues 

class Node{
    var value: Int
    var next: Node?
    
    init(val: Int) {
        value = val
    }
}


class Queue {
    var head: Node?
    
    func enqueue(val: Int) -> Queue {
        if self.head == nil {
            self.head = Node(val: val)
            return self
        }
        
        var current = self.head
        
        while current != nil {
            
            if current?.next == nil {
                current?.next = Node(val: val)
                return self
            }
            
            current = current?.next
        }
        
        return self
    }
    
    
    func dequeue() -> Bool {
        
        if self.head == nil {
            return false
        }
        
        self.head = self.head?.next
        
        return true
        
    }
    
    func contains(val: Int) -> Bool {
        
        var current = self.head
        
        while current != nil {
            if ((current?.value = val) != nil) {
                return true
            }
            current = current?.next
        }
        
        
        return false
    }
    
    func queueSize() -> Int {
        var count = 0
        
        var current = self.head
        
        while current != nil {
            count += 1
            current = current?.next
        }
        
        return count
    }
    
    func displayQueue() -> [Int] {
        var array = [Int]()
        
        var current = self.head
        
        while current != nil {
            array.append((current?.value)!)
            current = current?.next
        }
        
        return array
        
    }
    
    
}



var queue = Queue()


queue.enqueue(val: 20)
queue.enqueue(val: 30)
queue.enqueue(val: 10)

print(queue.displayQueue())

