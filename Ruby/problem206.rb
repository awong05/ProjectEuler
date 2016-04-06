n = 101_010_013

while n <= 138_902_657
	digits = "#{n ** 2}"
	break if /1\d2\d3\d4\d5\d6\d7\d8\d9/.match(digits)
	n += n % 10 == 3 ? 4 : 6
end

puts n * 10
