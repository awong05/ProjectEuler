current = 1
sum = 1

(1...1001).step(2).each do |x|
	4.times do
		current += x + 1
		sum += current
	end
end

puts sum