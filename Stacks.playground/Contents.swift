//collection of methods for stacks


class Node {
    var value: Int
    
    init(val: Int){
        self.value = val
    }
}


class Stack {
    
    var stackArray = [Node]()
    
    func enqueue(val: Int) ->  Stack {
        
        self.stackArray.append(Node(val: val))
        
        return self
    }
    
    
    func dequeue() -> Bool {
        
        if self.stackArray.count > 0 {
             self.stackArray.removeLast()
        }
        
        return true
    }
    
    func contains(val: Int) -> Bool {
        
        
        for node in self.stackArray {
            if node.value == val{
                return true
            }
        }
        
        return false
    }
    
    func stackSize() -> Int {
        return self.stackArray.count
    }
    
    func displayStack() -> [Int] {
        
        var array = [Int]()
        
        for node in self.stackArray {
            array.append(node.value)
        }
        
        return array
    }
    
    
}

