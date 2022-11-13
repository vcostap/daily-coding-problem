def split_string(string, size)
    space_idxs = (0 ... string.length).find_all { |i| string[i,1] == ' ' }
    space_idxs = space_idxs.last == string.length - 1 ? space_idxs : space_idxs.append(string.length - 1)
    last_char_idx = string.length - 1
    start_sub_string = 0
    
    result = []

    space_idxs.each.with_index do |space_idx, idx|
        if space_idx - start_sub_string <= size
            next
        else 
            if string[start_sub_string ... space_idxs[idx]].length > 10 and !string[start_sub_string ... space_idxs[idx]].match?(/\s/)
                result.append(nil)
                start_sub_string = space_idxs[idx] + 1
            else
                result.append(string[start_sub_string ... space_idxs[idx-1]])
                start_sub_string = space_idxs[idx-1] + 1
                if last_char_idx - start_sub_string <= size
                    result.append(string[start_sub_string ... string.length])
                elsif last_char_idx - start_sub_string > size and !string[start_sub_string ... string.length].match?(/\s/)
                    result.append(nil)
                end
            end
        end
    end

    p result
end

split_string("thequickbrown fox jumps over the lazy dog dogzãodaporra", 10)

