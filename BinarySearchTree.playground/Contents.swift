//collection of functions for Binary Search Trees

import UIKit

class Node {
    
    var value: Int!
    var left: Node?
    var right: Node?
    
    init(val: Int){
        self.value = val
    }
    
    func viewInOrder(){
        if self.left != nil {
            self.left?.viewInOrder()
        }
        
        print(self.value)
        
        if self.right != nil {
            self.right?.viewInOrder()
        }
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
    
    func viewInOrder(){
        if self.root != nil {
            self.root?.viewInOrder()
        }
    }
    
    
}



var bst = BST()
bst.add(val: 30)
bst.add(val: 34)
bst.add(val: 20)
bst.add(val: 28)
bst.add(val: 40)

bst.viewInOrder()




