#素数を小さい方から6つ並べると
#2, 3, 5, 7, 11, 13 であり、6番目の素数は 13 である。
#10001 番目の素数を求めよ。
# ANSWERD: 2015-04-03
#
require './base_calculator.rb'

class SpecifiedOrderPrimeCalculator < BaseCalculator

  def initialize(target_order)
    @target_order = target_order
    @primes = []
    super()
  end

  private
  def calc

    val = 2
    loop do
      @primes << val if prime?(val)
      break if target_order_size?
      val += 1
    end

    @answer = @primes.last
  end

  def prime?(val)
    prime_flg = true

    # valを1ずつ割って計算するより素数のみで計算する方が早い。
    # 非素数は素数で構成されているので、計算の必要が無い。
    # （構成している素数で既に計算済みのため）
    @primes.each do |prime|
      if val % prime == 0
        prime_flg = false
        break
      end

      break if need_to_continue?(prime, val)
    end
    prime_flg
  end

  # 平方根の整数部分以上の値では
  # 絶対に割り切れないため、計算の必要が無い
  def need_to_continue?(prime, val)
    prime >= Math.sqrt(val).to_i
  end

  def target_order_size?
    @primes.size == @target_order
  end
end

calc = SpecifiedOrderPrimeCalculator.new(10001)
calc.print_answer
