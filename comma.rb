#21.36

hensu = ARGV[0]
ary = hensu.split("")
if ary.size > 3
	comma_cmt = ary.size / 3

	for x in 1..comma_cmt
		ary.insert(-3 * x - 1 - (x - 1) , ",")
	end
	
	p ary.join

elsif

p hensu

end