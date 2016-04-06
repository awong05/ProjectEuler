n = 101_010_013

while n < 138_902_657
	digits = (n ** 2).to_s.split('')
	break if digits[0] == "1" and digits[2] == "2" \
		and digits[4] == "3" and digits[6] == "4" \
		and digits[8] == "5" and digits[10] == "6" \
		and digits[12] == "7" and digits[14] == "8" \
		and digits[16] == "9"
	if n % 10 == 3
		n += 4
	elsif n % 10 == 7
		n += 6
	end
end

puts n * 10
