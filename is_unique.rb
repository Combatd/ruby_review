def is_unique(str)
    # create a hash (object)
    # the hash will hold key value pairs of each character
    str.each_char.with_object( {} ) do |char, hash_map|
        if hash_map[char]
            return false # returns false if character shows up a second time in str
        else
            hash_map[char] = true # on finding first occurance of key char, value is true
        end
    end

    true # return true as no duplicate characters were found and every key has value of true
end

puts is_unique("burger") # false
puts is_unique("asdf") # true