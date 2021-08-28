def encode(string)
    encodedString = []
    count = 1
    (1..string.length).each do |idx|
        if string[idx] == string[idx-1]
            count += 1
        else
            encodedString.push("#{count}#{string[idx-1]}")
            count = 1
        end
    end
    encodedString.join
end

