func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    func checkPassword(inputPass: String) -> String{
        if(inputPass == password){
            return secret
        }else{
            return "Sorry. No hidden secrets here."
        }
    }
    return checkPassword
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
    let a : Int = f(room)
    let b : Int = f(a)
    let c : Int = f(b)
    return (a, b, c)
}
