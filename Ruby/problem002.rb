sum = 2
fibonacci = [1, 2]
while fibonacci[-1].to_i < 4000000
	fibonacci << fibonacci[-1] + fibonacci[-2]
	sum += fibonacci[-1] if fibonacci[-1] % 2 == 0
end
puts sum