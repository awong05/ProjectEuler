require 'prime'

count, current, total, primes = 1, 1, [1], []

while true
	4.times do
		current += count + 1
		total << current
		primes << current if current.prime?
	end
	count += 2
	break if (primes.length / Float(total.length)) < 0.1
end

puts count