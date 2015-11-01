count, length, fraction = 0, 0, []

while length < 1_000_000
	length += "#{count}".length
	fraction << count += 1
end

fraction = fraction.join.split('').map(&:to_i)
puts fraction[0] * fraction[9] * fraction[99] * fraction[999] * fraction[9_999] * fraction[99_999] * fraction[999_999]