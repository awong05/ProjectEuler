terms = { 1 => 1 }

(1...1_000_000).each do |n|
	next if terms.has_key?(n)
	start, count = n, 0
	until start == 1
		count += 1
		start = start.even? ? start / 2 : 3 * start + 1
		if terms.has_key?(start)
			terms[n] = terms[start] + count
			break
		end
	end
end

puts terms.key(terms.values.max)