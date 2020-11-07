# Strings can be changed by inserting character, removing character, replacing character.
# Return if one string can be edited once to match the other string

def oneEditAway(str1, str2)
    return true if str1 == str2
    # abs returns absolute value of the number...if returns more than 1, its more than 1 edit away
    return false if (str1.length - str2.length).abs > 1
    # string_one if str1 and str2 length is greater or equal, its str1 value, else str2
    string_one = str1.length >= str2.length ? str1 : str2
    # string_two if str1 is shorter than str2, its str1 value, else str2
    string_two = str1.length < str2.length ? str1 : str2

    # use arrays for comparison
    chars_arr_1 = string_one.split("")
    chars_arr_2 = string_two.split("")

    # we should only increment the index to the longer string! string_one
    first_index = 0
    second_index = 0
    edit_count = 0 # trying to check if 1 edit away

    while first_index < string_one.length
        if chars_arr_1[first_index] != chars_arr_2[second_index]
            edit_count += 1
            second_index += 1 if string_one.length == string_two.length
        else
            second_index += 1
        end

        first_index += 1

        return false if edit_count > 1 # can only be one edit away
    end

    return true
end

puts oneEditAway("pale", "ple") # true
puts oneEditAway("pales", "pale") # true
puts oneEditAway("pale", "bale") # true
puts oneEditAway("pale", "bae") # false