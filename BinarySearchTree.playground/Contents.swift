//collection of functions for Binary Search Trees

import UIKit

class Node {
    
    var value: Int!
    var left: Node?
    var right: Node?
    
    init(val: Int){
        self.value = val
    }
    
    func traverse(){
        if self.left != nil {
            self.left?.traverse()
        }
        
        print(self.value)
        
        if self.right != nil {
            self.right?.traverse()
        }
    }
    
    func size() -> Int {
        var size = 1
        
        if let left = self.left {
            size += left.size()
        }
        
        if let right = self.right {
            size += right.size()
        }
        
        
        return size
    }
    
    func height() -> Int {
        var leftHeight = 0
        var rightHeight = 0
        
        
        if let left = self.left {
            leftHeight += left.height()
        }
        
        if let right = self.right {
            rightHeight += right.height()
        }
        
        
        if leftHeight >= rightHeight {
            return leftHeight + 1
        }else{
            return rightHeight + 1
        }
        
        
    }
    
    func preOrder(){
        
        print("value \(self.value!)")
        
        if let left = self.left {
            left.preOrder()
        }
        
        if let right = self.right {
            right.preOrder()
        }
        
        
    }
    
    func postOrder(){
        
        
        
        if let left = self.left {
            left.postOrder()
        }
        
        if let right = self.right {
            right.postOrder()
        }
        
        
        print("value \(self.value!)")
        
        
    }
    
}



class BST {
    var root: Node?
    
    func add(val: Int) -> Bool {
        
        if self.root == nil {
            self.root = Node(val: val)
            return true
        }
        
        
        var current = self.root!
        
        while current != nil {
            if val > current.value {
                
                if current.right != nil {
                    current = current.right!
                }else{
                    current.right = Node(val: val)
                    return true
                }
                
            }else if val < current.value {
                
                if current.left != nil {
                    current = current.left!
                }else{
                    current.left = Node(val: val)
                    return true
                }
            }else{
                //nothing was added because the number is already in the tree
                return false
            }
        }
        
        
        return true
    }
    
    func min(){
        
        if self.root == nil {
            print("The tree is empty")
        }else{
            
        }
        
        var current = self.root
        
        while current?.left != nil {
            current = current?.left
        }
        
        
        print(current!.value)
        
    }
    
    func max() {
        if self.root == nil {
            
            print("The tree is empty")
            
        }else {
            
            var current = self.root
            
            while current?.right != nil {
                current = current?.right
            }
            
            print(current!.value)
        }
    }
    
    func traverse(){
        if self.root != nil {
            self.root?.traverse()
        }
    }
    
    func size() -> Int {
        
        if self.root == nil {
            return 0
        }
        
        return self.root!.size()
    }
    
    func height() -> Int {
        if self.root == nil {
            return 0
        }
        
        return self.root!.height()
    }
    
    func preOrder(){
        
        if let root = self.root {
            root.preOrder()
        }
        
    }
    
    func postOrder(){
        
        if let root = self.root {
            root.postOrder()
        }
        
    }
    
    func contains(val: Int) -> Bool {
        
        if let root = self.root {
            
            var current = root
            
            while(current != nil) {
                
                if current.value == val {
                    return true
                }
                
                if val > current.value && current.right != nil {
                    current = current.right!
                }else if val < current.value && current.left != nil {
                    current = current.left!
                }else{
                    return false
                }
                
                
            }
            
            
            
        }
        
        return false
    }
}



var bst = BST()
bst.add(val: 30)
bst.add(val: 34)
bst.add(val: 20)
bst.add(val: 28)
bst.add(val: 40)
bst.add(val: 10)
bst.add(val: 9)
bst.add(val: 8)

bst.size()
bst.postOrder()

print(bst.contains(val: 300))




