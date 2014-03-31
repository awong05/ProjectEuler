product = 1

for i in 100..999 do
	for j in 100..999 do
		prod = j*i
		product = prod if prod.to_s == prod.to_s.reverse && prod > product
	end
end

print product