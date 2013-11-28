from random import randint
board = []

for x in range(10):
    board.append(["O"] * 10)

def print_board(board):
    for row in board:
        print " ".join(row)
        
print "Let's play Battleship!"
print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)

for turn in range(8): # Will give the player 8 guesses
    guess_col = int(raw_input("Guess X coordinate:")) - 1
    guess_row = int(raw_input("Guess Y coordinate:")) - 1

    if guess_row == ship_row and guess_col == ship_col:
        print "Congratulations! You sunk the enemies' Battleship!"
        break
    else:
        if turn > 8:
            print "Game Over"
        if (guess_row < 0 or guess_row > 9) or (guess_col < 0 or     guess_col > 9):
            print "Those coordinates aren't even in the ocean."
        elif(board[guess_row][guess_col] == "X"):
            print "You guessed that one already"
        else:
            print "You missed my battleship!"
            board[guess_row][guess_col] = "X"
    # Print (turn + 1) here!
    print "Turn: "+ str((turn + 1))
    print_board(board)
