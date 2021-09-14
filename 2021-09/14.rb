def maxProfit(array)
    doubles = array.combination(2).to_a
    maxProfit = 0
    doubles.each { |pair| pair[1] - pair[0] > maxProfit ? (maxProfit = pair[1] - pair[0]) : next }
    maxProfit
end