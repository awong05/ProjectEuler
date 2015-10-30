chains = { 1 => 1, 89 => 89 }

def sum_squares(x)
	x.to_s.chars.map {|y| y.to_i ** 2}.reduce(:+)
end

(1...10_000_000).each do |n|
	puts n
	next if chains.has_key?(n)
	z = sum_squares(n)
	unless chains.has_key?(z)
		a = [n]

		while true
			a << z
			if chains.has_key?(z)
				z = chains[z]
				break
			end
			z = sum_squares(z)
			break if z == 1 or z == 89
		end

		if z == 1
			a.each {|b| chains[b] = 1}
		else
			a.each {|b| chains[b] = 89}
		end
	else
		chains[n] = chains[z]
	end
end

puts chains.values.grep(89).count