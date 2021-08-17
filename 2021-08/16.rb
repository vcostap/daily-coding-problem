def maximuns(array, size)
    result = []
    combinations = []
    array.each.with_index do |el, idx|
        if idx+size <= array.length
            combinations.push(array.slice(idx, size))
        end
    end
	combinations.each { |combination| result.push(combination.max) }
    result
end
