def print_board
  board.each do |i|
    puts board[i]
  end
  
end


board = Array.new{Array.new}
board[0] = [1,0,0,1,1,0]
board[4] = [0,1,0,0,1,0]


