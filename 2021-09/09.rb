def sumArray(array, number)
    permutations = []
    
    (1..array.length).each do |size|
        permutations.push(array.permutation(size).to_a)
    end

    permutations.flatten(1).each do |el|
		el.sum == number ? (return el) : next
    end
	nil
end