class Sieve
  attr :num

  def initialize(num)
    @num = num
  end

  def primes
    arr = (2..@num).to_a
    arr.each do |num|
      arr.reject! { |n| filter(n, num) }
    end
  end

  def filter(num1, num2)
    num1 % num2 == 0 && num1 != num2
  end
end

module BookKeeping
  VERSION = 1
end
