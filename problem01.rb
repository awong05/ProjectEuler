sum = 0

for i in 0...1000
	sum += i if i % 3 == 0 || i % 5 == 0
end

puts sum