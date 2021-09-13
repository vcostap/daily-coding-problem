def outOfOrder(array)
    combinations = array.combination(2).to_a
    result = []

    combinations.each { |el| el[0] > el[1] ? result.push(el) : next }
    result
end