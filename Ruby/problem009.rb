a = 0
b = 0
c = 0

for i in 0..1000/3
	for j in 0..1000/2
		if (i**2 + j**2 == (1000-i-j)**2)
			a = i
			b = j
			c = (1000-i-j)
		end
	end
end
puts a*b*c