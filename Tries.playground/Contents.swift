//collection of methods for tries


class Node {
    var links = [String: Node]()
    var endOfWord = false
    var value: String
    
    init(val: String){
        self.value = val
    }
}

class Trie {
    
    var root = Node(val: "root")
    
    
    func addWord(word: String) -> Bool {
        
        if word.characters.count == 0 {
            return false
        }
    
        var currentNode = self.root
        var currentLetter: String!
        
        for i in word.characters.indices {
            currentLetter = String(word[i])
            
            if currentNode.links[currentLetter] == nil {
                currentNode.links[currentLetter] = Node(val: currentLetter)
            }
            
            
            currentNode = currentNode.links[currentLetter]!
                
            
        }
        
        currentNode.endOfWord = true
        
        return true
    }
    
    
    func contains(word: String) -> Bool {
        
        if word.characters.count == 0 {
            return false
        }

        
        var current = self.root
        var currentLetter: String!
        
        for i in word.characters.indices {
            
            currentLetter = String(word[i])
            
            if current.links[currentLetter] == nil {
                return false
            }else {
                current = current.links[currentLetter]!
            }
            
        }
        
        if current.endOfWord == true {
            return true
        }
        
        return false
    }
    
    
    
    func delete(word: String) -> Bool {
        
        if !self.contains(word: word){
            return false
        }
        
        var current = self.root
        var trailer = current
        var trailerLetter = String(describing: word.characters.first)
        
        for i in word.characters.indices {
            
            let currentLetter = String(word[i])
            
            print("the current values \(currentLetter)")
            current = current.links[currentLetter]!
            
            if current.endOfWord == true && current.links.count > 1{
                trailer = current
                trailerLetter = currentLetter
            }
            
        }
        
        current.endOfWord = false
        
        if trailer.links.count == 1 {
            trailer.endOfWord = false
        }
        
        trailer.links.removeValue(forKey: trailerLetter)
        
        return true
        
    }
    
    
}






