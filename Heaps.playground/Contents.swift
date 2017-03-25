// Collection of methods for heaps (min heap example)

class Heap {
    
    var heap = [Int]()
    
    func insert(num: Int){
        self.heap.append(num)
        bubbleUp()
    }
    
    func remove() -> Bool{
        
        if self.heap.count == 0 {
            return false
        }else{
            self.heap[0] = self.heap[self.heap.count - 1]
            self.heap.popLast()
            self.heap
        }
        
        
        return bubbleDown()
    }
    
    func bubbleUp(){
        
        var currentIndex = self.heap.count - 1
        
        while currentIndex > 0 && self.heap[currentIndex] < self.heap[parent(index: currentIndex)] {
            let parentIndex = parent(index: currentIndex)
            let temp = self.heap[currentIndex]
            self.heap[currentIndex] = self.heap[parentIndex]
            self.heap[parentIndex] = temp
            currentIndex = parentIndex
        }
        
        
    }
    
    func bubbleDown() -> Bool {
        self.heap
        if self.heap.count > 1 {
            
            
            var currentIndex = 0
            
            while hasLeft(index: currentIndex) {
                
                let currentNum = self.heap[currentIndex]
                let leftNum = self.heap[left(index: currentIndex)]
                
                if hasRight(index: currentIndex) {
                    
                    let rightNum = self.heap[right(index: currentIndex)]
                    
                    if  rightNum < leftNum && rightNum < currentNum {
                        
                        self.heap[currentIndex] = rightNum
                        self.heap[right(index: currentIndex)] = currentNum
                        currentIndex = right(index: currentIndex)
                        
                    }else if leftNum < currentNum {
                        
                        self.heap[currentIndex] = leftNum
                        self.heap[left(index: currentIndex)] = currentNum
                        currentIndex = left(index: currentIndex)
                        
                    }else {
                        return true
                    }
                    
                    
                }else {
                    if leftNum < currentNum {
                        
                        self.heap[currentIndex] = leftNum
                        self.heap[left(index: currentIndex)] = currentNum
                        currentIndex = left(index: currentIndex)
                    }
                    
                }
                
                
            }
            
            
        }
        
        
        return true
    }
    
    
    func parent(index: Int) -> Int {
        
        return Int(((Double(index) - 2.0) / 2.0).rounded(.up))
    }
    
    func left(index: Int) -> Int {
        return ((index * 2) + 1)
    }
    
    func right(index: Int) -> Int{
        return ((index * 2) + 2)
    }
    
    func hasLeft(index: Int) -> Bool {
        return ((index * 2) + 1) < self.heap.count

    }
    
    
    func hasRight(index: Int) -> Bool {
        
        return ((index * 2) + 2) < self.heap.count
    }
    
    

}








