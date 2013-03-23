# フィボナッチ数列の項は前の2つの項の和である.
# 最初の2項を 1, 2 とすれば, 最初の10項は以下の通りである.
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 数列の項の値が400万を超えない範囲で, 偶数値の項の総和を求めよ.

ary = [1, 2]
while ary.last < 4000000
    ary << ary[ary.size - 1] + ary[ary.size - 2]
end

sum = 0
ary.each do |x|
    sum += x if x % 2 == 0
end

puts sum
