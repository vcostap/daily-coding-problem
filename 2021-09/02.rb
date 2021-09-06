def orderRGB(array)
    result = []
    array.each { |el| el == 'R' ? result.push(el) : next  }
    array.each { |el| el == 'G' ? result.push(el) : next  }
    array.each { |el| el == 'B' ? result.push(el) : next  }
	result
end