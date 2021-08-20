#partial solution
def reconstruction(arrayWords, string)
    arrayWords.each { |word| string.include?(word) ? next : (return nil) }
    puts arrayWords
end