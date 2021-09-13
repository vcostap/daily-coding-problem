def onlyOne(array)
    array.each { |num| array.count(num) == 1 ? num : next }
end