triangles, pentagons, hexagons = [], [], []

(1..100_000).each do |n|
	triangles << 0.5 * n * (n + 1)
	pentagons << 0.5 * n * (3 * n - 1)
	hexagons << n * (2 * n - 1)
end

for x in triangles
	if pentagons.include?(x) and hexagons.include?(x) and x > 40755
		puts x
		break
	end
end