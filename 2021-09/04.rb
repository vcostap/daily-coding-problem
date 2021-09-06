def allSubArray(array)
    result = []
    (0..array.length).each do |size| 
        result.push(array.combination(size).to_a)
    end
    result.flatten(1).length
end