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

func resetScore(_ scores: inout [String: Int], _ name: String) {
    
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  fatalError("updateScore not implemented - please add implementation here")
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  fatalError("orderByPlayers not implemented - please add implementation here")
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  fatalError("orderByScores not implemented - please add implementation here")
}
