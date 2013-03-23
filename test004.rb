#左右どちらから読んでも同じ値になる数を回文数という。 
#2桁の数の積で表される回文数のうち、最大のものは 9009 = 91 × 99 である。
#
#では、3桁の数の積で表される回文数のうち最大のものはいくらになるか。

class Test004 
    def max_anagrams(min1, max1, min2, max2)
        ary = []
        for i in min1..max1
            for j in min2..max2
                num = i * j
                if num == self.reverse_str(num.to_s).to_i
                    ary.push(num)
                end
            end
        end
        ary.max
    end

    def reverse_str(str)
        str.split(//u).reverse.join
    end
end

tmp = Test004.new
print tmp.max_anagrams(100, 999, 100, 999)
