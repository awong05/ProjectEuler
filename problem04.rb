def palindrome(n)
	return n.to_s == n.to_s.reverse
end

product = 1

for i in 100..999 do
	for j in 100..999 do
		prod = j*i
		product = prod if palindrome(prod) && prod > product
	end
end

print product