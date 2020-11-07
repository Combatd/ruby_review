def compress_string(str)
    compressed_string = "" # initialize empty string
end

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