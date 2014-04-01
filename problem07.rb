count = 6
n = 13

def prime(n)
	(2..n-1).each { |x| return false if n % x == 0 }
	return true
end

until count == 10001 do
	n += 1
	count += 1 if prime(n)
end

print n