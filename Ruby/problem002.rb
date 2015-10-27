sum = 2
fibonacci = [1, 2]
while fibonacci[fibonacci.length-1].to_i < 4000000
	fibonacci << fibonacci[fibonacci.length-1].to_i + fibonacci[fibonacci.length-2].to_i
	sum += fibonacci[fibonacci.length-1] if fibonacci[fibonacci.length-1] % 2 == 0
end
puts sum