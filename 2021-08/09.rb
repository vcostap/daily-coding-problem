def prefixContent(prefix, words)
    if words.is_a? Array
        words.each { |word| word.start_with?(prefix) ? next : words.delete(word) }
    end
    words
end