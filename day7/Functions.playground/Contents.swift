import Cocoa




func areStringsEquals (test first: String, second: String) -> Bool {
    if (first.count != second.count){
        return false
    }
    
    first.sorted()
    second.sorted()
    
    if (first != second){
        return false
    }
    
    return true
}

