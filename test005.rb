#2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり、
#そのような数字の中では最小の値である。
#では、1 から 20 までの整数全てで割り切れる
#数字の中で最小の値はいくらになるか。

num = 20
sum = 20
ok_ary = []

while  num >=  2
    if sum % (num - 1) != 0
        sum = sum * (num - 1) 
    end
    num -= 1
end

(1..20).to_a.each do |m|
    if sum % m == 0
        puts "OK"
        ok_ary << m
    else 
        puts "NG"
    end
end

puts sum
print ok_ary


