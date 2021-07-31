def multiplyElements(array)
    output = []
	result = 1
    
    array.each do |el| 
        (0...array.length).each { |idx| array[idx] == el ? next : (result *= array[idx]) }
        output.push(result)
        result = 1
    end

    output
end