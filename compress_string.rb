# compress string into lowercase string containing the character next to the times it appears in the string
# return the original string if the compressed string is longer than the original
def compress_string(str)
    compressed_string = ""
    str.each_char do |char, idx|
        count = letter_count(str, char)
        compressed_string += "#{char}#{count}"
        return str if compressed_string.length > str.length
    end
    
    compressed_string
end
# checking the length of compressed string prevents us from spending extra
# time on a compressed_string we may not have to return.
# However, this also makes our code more repetitive having a helper method as another loop

    # if compressed_string.length > str.length
    #     return str
    # else
    #     return compressed_string
    # end

# keeping the letter count separate works well when we don't have many characters
def letter_count(string, char)
    count = 0 # initialize count with 0
    # downcase for ease of comparisons
    word = string.downcase
    letter = char.downcase
    word.each_char do |c| 
        if c == letter # two equal signs for comparisons
            count += 1 
        end
    end
    count
end

puts compress_string("racecar")