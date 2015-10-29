a = []

for x in (2..100)
	for y in (2..100)
		a << x ** y unless a.include?(x ** y)
	end
end

puts a.count