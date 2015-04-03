#最初の10個の自然数について、その和の二乗と、二乗数の和は以下の通り。
#1² + 2² + ... + 10² = 385
#(1 + 2 + ... + 10)² = 3025
#
#これらの数の差は 3025 - 385 = 2640 となる。
#
#同様にして、最初の100個の自然数について和の二乗と二乗の和の差を求めよ。
# ANSWERD: 2015-04-03
#
class SumSquareDifferenceCalculator

  def initialize(target_val)
    @target_val = target_val
    calc
  end

  def print_answer
    p @answer
  end

  private
  def calc
    @answer = calc_sum_square - calc_square_sum
  end

  def calc_square_sum
    (1..@target_val).inject {|sum, x| sum += x**2 }
  end

  def calc_sum_square
    (1..@target_val).reduce(:+) ** 2
  end
end

calc = SumSquareDifferenceCalculator.new(100)
calc.print_answer
