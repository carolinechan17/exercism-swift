//MARK: Define a new high score dictionary
func newScoreBoard() -> [String: Int] {
    var newHighScore : [String: Int] = [:]
    return newHighScore
}

//MARK: Add players to the high score dictionary
func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

//MARK: Remove players from the score dictionary
func removePlayer(_ scores: inout [String: Int], _ name: String) {
    if scores[name] != nil {
        scores[name] = nil
    }
}

//MARK: Reset a player's score
func resetScore(_ scores: inout [String: Int], _ name: String) {
    if scores[name] != nil {
        scores[name] = 0
    }
}

//MARK: Update a player's score
func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    scores[name] = scores[name]! + delta
}

//MARK: Get a list of players with scores ordered by player name
func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    func order(_ left: (String, Int), _ right: (String, Int)) -> Bool {
        let leftString = left.0
        let rightString = right.0
        return leftString < rightString
    }
    
    let sortedScores = scores.sorted(by: order)
    return sortedScores
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {

}
