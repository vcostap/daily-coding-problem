def longestPalindromic(string)
	results = []
    string.each_char.with_index do |char, idx|
        (idx...string.length).each do |index|
			next if string.slice(idx..index).length == 1
            results.push(string.slice(idx..index)) if string.slice(idx..index) == string.slice(idx..index).reverse
		end
    end
    results.max { |a, b| a.length <=> b.length }
end