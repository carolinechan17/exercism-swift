// TODO: define the 'birthday' String constant
let birthday = "Birthday"

// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"

// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"

// TODO: define the 'space' Character constant
let space : Character = " "

// TODO: define the 'exclamation' Character constant
let exclamation : Character = "!"

func buildSign(for occasion: String, name: String) -> String {
    return "Happy" + String(space) + "\(occasion)" + String(space) + "\(name)" + String(exclamation)
}

func graduationFor(name: String, year: Int) -> String {
    return "Congratulations" + String(space) + "\(name)" + String(exclamation) + "\nClass" + String(space) + "of" + String(space) + "\(year)"
}

func costOf(sign: String) -> Int {
    return 2 * sign.count + 20
}
