hensu = ARGV[0].to_i
for x in 1..hensu
cmt = 2 * x - 1
fullcmt = 2 * hensu -1
space = " " * ((fullcmt - cmt) / 2)
p str = space + ('*' * cmt) + space
end
