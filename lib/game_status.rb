# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]

]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "O" && position_2 == "O" && position_3 == "O" || position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    end
  end
end

def full?(board)
 board.each do |token|
   if token == " " || nil
     return false
   end
 end
end

def draw?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return true
  else
    return false
  end
end

def over?(board)
  if board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"] || board == ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
    return true
  else
    return false
  end
end

def winner(board)
  if board == ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
    return "X"
  elsif board == ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
    return "O"
  else
    return nil
  end
end
