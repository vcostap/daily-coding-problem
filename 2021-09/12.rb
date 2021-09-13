def rand7()
    array = Array.new(7) {|i| i+1 }
    array.shuffle.last
end