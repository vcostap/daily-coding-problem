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

def decode(string)
    decodeString = ""
    (0...string.length).each do |idx|
        if idx.even?
            decodeString += string[idx+1] * string[idx].to_i
        end
    end
    decodeString
end