require 'prime'

sum = 0

for i in 2..2000000
	sum += i if i.prime?
end

puts sum