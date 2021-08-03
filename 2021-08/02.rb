def firstMissing(array)
    array.sort!.each.with_index { |el, idx| el < 1 ? next : (array[idx+1] ? (el+1 == array[idx+1] ? next : (return el+1)) : (return el+1)) }
    return 1
end
        