=begin
10以下の素数の和は2 + 3 + 5 + 7 = 17である.
200万以下の全ての素数の和を計算しなさい

ANSWERD: 2015-04-02
=end

require 'prime'

class SumPrimesCalculator
  def initialize(calc_limit)
    @calc_limit = calc_limit
  end

  def sum
    primes = pickup_prime

    sum = 0
    primes.each {|prime| sum += prime}
    sum
  end

  private
  def pickup_prime
    primes = []
    (1..@calc_limit).each do |num|
      primes << num if Prime.prime? num
    end
    primes
  end
end

calc = SumPrimesCalculator.new(2000000)
p calc.sum
