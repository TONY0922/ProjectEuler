#2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり、
#そのような数字の中では最小の値である。
#では、1 から 20 までの整数全てで割り切れる
#数字の中で最小の値はいくらになるか。

class LowestCommonCalculator
  def initialize(target_range)
    @target_range = target_range
    @lowestCommon = 1
    calc
  end

  def print_answer
    p @lowestCommon
  end

  private
  def calc
    for i in @target_range
      next if @lowestCommon % i == 0

      index = 2
      loop do
        if (@lowestCommon * index) % i == 0
          @lowestCommon *= index
          break
        end
        index += 1
      end
    end
  end
end

calc = LowestCommonCalculator.new(1..20)
calc.print_answer
