def number_of_letters(x)
	expression = ""
	
	ones = {
		"1" => "one",
		"2" => "two",
		"3" => "three",
		"4" => "four",
		"5" => "five",
		"6" => "six",
		"7" => "seven",
		"8" => "eight",
		"9" => "nine"
	}

	tens = {
		"10" => "ten",
		"11" => "eleven",
		"12" => "twelve",
		"13" => "thirteen",
		"14" => "fourteen",
		"15" => "fifteen",
		"16" => "sixteen",
		"17" => "seventeen",
		"18" => "eighteen",
		"19" => "nineteen",
		"2" => "twenty",
		"3" => "thirty",
		"4" => "forty",
		"5" => "fifty",
		"6" => "sixty",
		"7" => "seventy",
		"8" => "eighty",
		"9" => "ninety"
	}
	
	case x.to_s.length
	when 1
		expression = ones[x.to_s]
	when 2
		expression = x.to_s[0] == "1" ? tens[x.to_s] : "#{tens[x.to_s[0]]} #{ones[x.to_s[1]]}"
	when 3
		expression = "#{ones[x.to_s[0]]} hundred"
		expression += x.to_s[1] == "1" ? " and #{tens[x.to_s[1..2]]}" : " and #{tens[x.to_s[1]]} #{ones[x.to_s[2]]}" if x % 100 != 0
	else
		expression += "one thousand"
	end
	expression.gsub(/[ -]/, "").length
end

sum = 0

(1..1000).each {|n| sum += number_of_letters(n)}

puts sum