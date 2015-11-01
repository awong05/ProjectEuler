count = 0
fraction = []

while fraction.join.length < 1_000_000
	count += 1
	fraction << count
	puts fraction.join.length
end

fraction = fraction.join.split('')
puts fraction[0] * fraction[10] * fraction[100] * fraction[1_000] * fraction[10_000] * fraction[100_000] * fraction[1_000_000]