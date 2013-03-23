 # 13195 の素因数は 5、7、13、29 である。
 # 600851475143 の素因数のうち最大のものを求めよ。

class PrimeFactor
    def max_prime_factorized(num)
        i = 2
        factors = []
        while i < num
            if num % i == 0
                num = num / i
                factors << i
            else
                i += 1
            end
        end
        factors << num
        factors.max
    end
end

prime = PrimeFactor.new
print prime.max_prime_factorized(600851475143)
