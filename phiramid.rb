hensu = ARGV[0].to_i
for x in 1..hensu 
str = '*' * (2 * x - 1)
p str.center(2 * hensu -1)
end
