# Tic-Tac-Toe Game in Swift
This is a simple Tic-Tac-Toe game implemented in Swift. The game allows two players to play on a 3x3 grid, with each player taking turns to place their mark (either "X" or "O") on the grid. The first player to align three marks vertically, horizontally, or diagonally wins the game.
<img src="https://github.com/user-attachments/assets/711b9d1e-7a7e-4638-91b9-82cfca09817f" width="300" height="auto" />
<img src="https://github.com/user-attachments/assets/eb6b6aa0-bf76-4624-b072-8fc465a8d700" width="300" height="auto" />
<img src="https://github.com/user-attachments/assets/c49add95-5c07-48d8-ad5b-4659e9c14390" width="300" height="auto" />
<img src="https://github.com/user-attachments/assets/7f2ac300-037c-441f-b27a-e45bdd2cd146" width="300" height="auto" />
<img src="https://github.com/user-attachments/assets/043383ff-1680-4ec1-9968-c771fa220c98" width="300" height="auto" />

Features
Two-player mode: Player 1 uses "X" and Player 2 uses "O".
3x3 grid for gameplay.
Check for win conditions (horizontal, vertical, diagonal).![WhatsApp Image 2024-11-14 at 01 05 48_f41dee15]
Game reset feature after a win or draw.![IMG-20241114-WA0004]
Simple user interface with buttons for each cell on the grid.
Prerequisites
Xcode 12 or later.
Swift 5 or later.
Installation
Clone this repository to your local machine:

git clone https://github.com/cryptic0053/Tic-Tac-Toe
Open the project in Xcode:

open TicTacToe.xcodeproj
Build and run the project on your simulator or device.

How to Play
Launch the app.
Player 1 will be assigned "X" and Player 2 will be assigned "O".
Players take turns to tap on any empty grid cell to place their mark.
The game will check after each move if a player has won or if the game has ended in a draw.
If there is a winner, the game announces the winner and prompts to reset the game.
If all cells are filled and there is no winner, the game ends in a draw and can be restarted.
File Structure
ViewController.swift: The main view controller that handles the game logic, user interaction, and display.
Game.swift: The logic for tracking the game state, player turns, and checking for win conditions.
Main.storyboard: The storyboard file for designing the user interface.
Assets.xcassets: The folder for image assets (if any, like images for "X" and "O").
Example Gameplay
Player 1 (X) places a mark in the top-left corner.
Player 2 (O) places a mark in the middle.
The game continues until either one player wins or the game ends in a draw.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Acknowledgements
Swift programming language and Xcode IDE.
Inspiration from classic Tic-Tac-Toe game design.
