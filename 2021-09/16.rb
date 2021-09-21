def maxSum(array)
    subarray = []
    maxSum = 0

    array.each.with_index { |el,idx| subarray.push(array[idx...array.length]) }

    subarray.each { |arr| arr.sum > maxSum ? (maxSum = arr.sum) : next } 
    maxSum
end