class Squares
  attr :num

  def initialize(num)
    @num = num
  end

  def sum_of_squares
    @num.zero? ? @num : (1..@num).inject { |accr, n| accr + n ** 2 } 
  end

  def square_of_sum
    @num.zero? ? @num : (1..@num).inject(:+) ** 2
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

module BookKeeping
  VERSION = 3.freeze
end
