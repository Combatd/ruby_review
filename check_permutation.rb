# Check if one string has the same characters as the other. CASE SENSITIVE
def check_permutation(str1 = "", str2 = "")
    return true if str1 == str2 # initial check if same string has been passed in twice

    if str1.split("").sort == str2.split("").sort # sort the characters in an array according to ascii value
        return true # once sorted, they should be the same order if the characters are the same
    else
        return false # if different characters or length, return false
    end
end

puts check_permutation("dog", "god") # true
puts check_permutation("creative", "reactive") # true
puts check_permutation("dog", "Dog") # false
puts check_permutation() # true