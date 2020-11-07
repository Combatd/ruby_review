# Replace all the spaces in a string with %29
# The string has sufficient space at the end to hold additional characters
def urlify(str)
    if str.include?(" ") == true
        # gsub! is a mutating regular expression method matching the first pattern and replacing it with the second
        str.gsub!(" ", "%20") # return the mutated string
    else
        return str # if there are no spaces, return the string right away
    end
end

puts urlify("Mr John Smith")
puts urlify("SakuraMiko")