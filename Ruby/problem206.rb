(101_010_010...138_902_662).each do |n|
	next unless n.to_s.chars.last == "3" or n.to_s.chars.last == "7"
	digits = (n ** 2).to_s.split('')
	next unless digits[0] == "1" and digits[2] == "2" \
		and digits[4] == "3" and digits[6] == "4" \
		and digits[8] == "5" and digits[10] == "6" \
		and digits[12] == "7" and digits[14] == "8" \
		and digits[16] == "9"
	puts n * 10
	break
end