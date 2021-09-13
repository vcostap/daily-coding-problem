def push(array, number)
    array[array.length] = number
    array
end

def pop(array)
    return nil if array.nil? || array.length == 0
    result = array.slice(-1, 1)
    array = array.slice(0, array.size - 1)
    result
end

def max(array)
    return nil if array.nil? || array.length == 0
    max = array[0]
    
    array.each { |el| el >= max ? (max = el) : next }
    max
end