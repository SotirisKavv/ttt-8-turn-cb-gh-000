def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board, index)
  return board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  if index >= 0 && index < 9
    return !position_taken?(board, index)
  else return nil end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)

  puts "Pick a spot (1-9):"

  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid input."
    turn(board)
  end
end
