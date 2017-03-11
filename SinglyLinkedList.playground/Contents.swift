//collection of methods for singly linked lists

class Node {
    var value: Int
    var next: Node?
    
    
    init(val: Int){
        self.value = val
    }
}

class SLL {
    
    var head: Node?
    
    
    func addNode(val: Int) -> SLL{
        
        if self.head == nil {
            self.head = Node(val: val)
        }else{
            
            var current = self.head
            
            while current?.next != nil {
                current = current?.next
            }
            
            current?.next = Node(val: val)
        }
        
        return self
        
    }
    
    func removeNode(val: Int) -> Bool {
        
        if self.head == nil {
            return false
        }
        
        
        if self.head?.value == val {
            self.head = self.head?.next
            return true
        }else {
            
            var current = self.head
            
            while current?.next != nil {
                if current?.next?.value == val {
                    
                    if let newConnection = current?.next?.next {
                        current?.next? =  newConnection
                    }else {
                        current?.next = nil
                    }
                    
                    return true
                }
                
                current = current?.next
            }
            
        }
        
        return false
        
    }
    
    func find(val: Int) -> Bool {
        
        var current = self.head
        
        while current != nil {
            if current?.value == val {
                return true
            }
            
            current = current?.next
        }
        
        
        return false
        
    }
    
    func insertNode(val: Int, val_after: Int) -> Bool {
        
        var current = self.head
        
        
        while current != nil {
            
            if current?.value == val_after {
                let newNode = Node(val: val)
                newNode.next = current?.next
                current?.next = newNode
                return true
            }
            
            current = current?.next
        }
        
        
        return false
    }
    
    func isEmpty() -> Bool {
        if self.head == nil {
            return true
        }
        
        return false
    }
    func displayList() -> [Int] {
        
        var array = [Int]()
        
        var current: Node? = self.head
        
        while current != nil {
            array.append((current?.value)!)
            current = current?.next
        }
        
        return array
        
    }
    
    
}




