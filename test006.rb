#最初の10個の自然数について、その和の二乗と、二乗数の和は以下の通り。
#1² + 2² + ... + 10² = 385
#(1 + 2 + ... + 10)² = 3025
#
#これらの数の差は 3025 - 385 = 2640 となる。
#
#同様にして、最初の100個の自然数について和の二乗と二乗の和の差を求めよ。


ary = Array.new()

100.times do |x|
ary << x + 1
end

a = Array.new()
b = Array.new()

for x in ary
    a << (x**2)
    b << x
end

for x in a


puts "和の2乗:" + (b^2).to_s
puts "2乗数の和:" + a.to_s
puts "引き算:" + (b^2 - a).to_s

