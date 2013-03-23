#6.07•b‚Å§”e

hensu = ARGV[0].to_i
ary = []
ary << 0
ary << 1

for x in 1..hensu-2
ary << (ary[x] + ary[x-1])
end

p ary

