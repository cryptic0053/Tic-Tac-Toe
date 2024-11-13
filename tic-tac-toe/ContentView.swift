import SwiftUI

struct ContentView: View {
    @State private var board: [[String]] = Array(repeating: Array(repeating: "", count: 3), count: 3)
    @State private var currentPlayer: String = "X"
    @State private var gameMessage: String = "Tic-Tac-Toe"
    @State private var isGameOver = false

    var body: some View {
        VStack {
            Text(gameMessage)
                .font(.largeTitle)
                .padding(.bottom, 20) // Add padding below the title

            ForEach(0..<3, id: \.self) { row in
                HStack(spacing: 10) { // Add spacing between columns
                    ForEach(0..<3, id: \.self) { column in
                        CellView(symbol: $board[row][column])
                            .onTapGesture {
                                handleTap(row: row, column: column)
                            }
                    }
                }
            }
            .padding(.bottom, 20) // Add padding below the game board
            
            if isGameOver {
                Button("Restart Game") {
                    resetGame()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
        }
        .padding(20) // Add padding around the entire VStack
    }
    
    private func handleTap(row: Int, column: Int) {
        if board[row][column] == "" && !isGameOver {
            board[row][column] = currentPlayer
            if checkWin() {
                gameMessage = "\(currentPlayer) Wins!"
                isGameOver = true
            } else if checkDraw() {
                gameMessage = "It's a Draw!"
                isGameOver = true
            } else {
                currentPlayer = (currentPlayer == "X") ? "O" : "X"
                gameMessage = "\(currentPlayer)'s Turn"
            }
        }
    }
    
    private func checkWin() -> Bool {
        for i in 0..<3 {
            if board[i][0] == currentPlayer && board[i][1] == currentPlayer && board[i][2] == currentPlayer {
                return true
            }
            if board[0][i] == currentPlayer && board[1][i] == currentPlayer && board[2][i] == currentPlayer {
                return true
            }
        }
        if board[0][0] == currentPlayer && board[1][1] == currentPlayer && board[2][2] == currentPlayer {
            return true
        }
        if board[0][2] == currentPlayer && board[1][1] == currentPlayer && board[2][0] == currentPlayer {
            return true
        }
        return false
    }
    
    private func checkDraw() -> Bool {
        for row in board {
            for cell in row {
                if cell == "" {
                    return false
                }
            }
        }
        return true
    }
    
    private func resetGame() {
        board = Array(repeating: Array(repeating: "", count: 3), count: 3)
        currentPlayer = "X"
        gameMessage = "Tic-Tac-Toe"
        isGameOver = false
    }
}

struct CellView: View {
    @Binding var symbol: String

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue.opacity(0.3))
                .frame(width: 100, height: 100)
                .cornerRadius(8)
            
            Text(symbol)
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

