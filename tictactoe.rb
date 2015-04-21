class Board
#  grid = [
#  [:x, nil, :o],
#  [:x, :o, nil],
#  [nil, nil, nil]
# ]
  def initialize
    @grid = Array.new(3) { Array.new(3) }
  end

  def won?
    check_rows? || check_columns? || check_diags?
  end

  def check_rows?
    @grid.any? { |row| all_same?(row) }
  end

  def check_columns?
    @grid.transpose.any? { |col| all_same?(col) }
  end

  def check_diags?
    diag1 = (0..2).map { |i| @grid[i][i] }
    diag2 = [[[0, 2], [1, 1], [2, 0]]]
    diag2.map! { |x, y| @grid[x][y] }

    all_same?(diag1) || all_same?(diag2)
  end

  def all_same?(array)
    array.all? { |value| value == :o } || array.all? { |value| value == :x }
  end

  def winner
  end

  def empty?(pos)
  end

  def place_mark(pos, mark)
  end

end

class Game

  def initialize
    play
  end

  def play
  end


end

class Player

  def initialize
  end

end

class HumanPlayer < Player

  def initialize
  end

end

class ComputerPlayer < Player

  def initialize
  end

end
