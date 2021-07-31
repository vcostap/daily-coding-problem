def sumElements(array, k)
    array.each { |el| el == array.last ? (return false) : ((0...array.length).each { |i| el != array[i] ? (el+array[i] == k ? (return true) : next) : next })  }
end