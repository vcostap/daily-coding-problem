def medianas(array)
	result = []
    array.each.with_index do |el, idx| 
        calc = Array.new(array.slice(0, idx+1).sort)
        if calc.size.odd?
            result.push(calc[calc.size/2]) 
        else
            (calc[calc.size/2]+calc[calc.size/2 -1]) % 2 == 0 ? result.push((calc[calc.size/2]+calc[calc.size/2 -1])/2) : result.push((calc[calc.size/2]+calc[calc.size/2 -1])/2.to_f)
        end
    end
    result
end
