#素数を小さい方から6つ並べると 
#2, 3, 5, 7, 11, 13 であり、6番目の素数は 13 である。
#10001 番目の素数を求めよ。

argv = ARGV[0].to_i
ary = []

for x in 1..argv
    for y in 1..x
        if (y >= 2) && (x % y == 0) && (y <= x - 1)
            break
        end

        if x == y && x != 1
            ary << x
        end
    end
end
   
p ary.pop


            

