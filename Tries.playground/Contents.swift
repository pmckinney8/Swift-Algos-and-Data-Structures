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
    
}


var trie = Trie()

trie.addWord(word: "race")
trie.addWord(word: "racecar")





