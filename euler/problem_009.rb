#ピタゴラスの三つ組(ピタゴラスの定理を満たす自然数)とはa<b<cで
#a² + b² = c²
#を満たす数の組である.
#
#例えば, 3² + 4² = 9 + 16 = 25 = 5²である.
#a + b + c = 1000となるピタゴラスの
#三つ組が一つだけ存在する. このa,b,cの積を計算しなさい.

class PitagorasCalculator

  def initialize(side_sum)
    @side_sum = side_sum
    calc
  end

  def print_answer
    # p "a(#{@a}) + b(#{@b}) + c(#{@c}) = 1000"
    # p "#{@a}^2 + #{@b}^2 = #{@c}^2 is #{check_pitagoras?(@a, @b, @c)}"
    p @a * @b * @c
  end

  private
  def calc
    # TODO
  end

  def check_pitagoras?(a,b,c)
    return a^2 + b^2 == c^2
  end
end

calc = PitagorasCalculator.new(1000)
calc.print_answer





