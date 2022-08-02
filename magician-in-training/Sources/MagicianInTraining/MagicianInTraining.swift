func getCard(at index: Int, from stack: [Int]) -> Int {
    return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    if(index >= 0 && index < stack.count){
        var newStack = stack
        newStack[index] = newCard
        return newStack
    }else{
        return stack
    }
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.append(newCard)
    return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    if(index >= 0 && index < stack.count){
        var newStack = stack
        newStack.remove(at: index)
        return newStack
    }else{
        return stack
    }
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    if(stack.isEmpty){
        return stack
    }else{
        var newStack = stack
        newStack.remove(at: stack.count - 1)
        return newStack
    }
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var newStack = stack
    newStack.insert(newCard, at: 0)
    return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    if(stack.isEmpty){
        return stack
    }else{
        var newStack = stack
        newStack.remove(at: 0)
        return newStack
    }
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    if(stack.count == size){
        return true
    }
    return false
}

func evenCardCount(_ stack: [Int]) -> Int {
    var count : Int = 0
    for num in stack {
        if(num % 2 == 0){
            count += 1
        }
    }
    return count
}
