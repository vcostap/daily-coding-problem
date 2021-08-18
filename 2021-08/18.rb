def intersectionNode (a, b)
    a.each.with_index { |el, idx| b.include?(el) ? (b.index(el) == idx ? (return el) : next) : next }
    return nil
end

a = [3 , 7 , 8 , 10]
b = [99 , 1 , 8 , 10]