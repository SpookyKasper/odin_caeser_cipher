# Algorithm:
# Declare to arrays of letters, one lower case and one upper case
# Merge those 2 arrays in a full array
# Translate letters from the passed string to index position in full array ans store that in the index_array
# Iterate through index_position array check if index bigger than 25, if true than substract 26 before translating and pick Upper Case
# Otherwise just pick lower case to translate


def caesar_cipher(string, number)
  lower_array = ("a".."z").to_a
  upper_array = ("A".."Z").to_a
  specials_array = ("!".."?").to_a
  specials_array << " "
  full_alpha_array = lower_array + upper_array
  string_array = string.split('')
  index_array = string_array.map do |char|
    if specials_array.include?(char) then char
    else char = full_alpha_array.index(char) 
    end
  end
  coded_array = index_array.map do |num|
    if not num.is_a?(Integer) then num = num 
    elsif num > 25 then num = upper_array[num - 26 - number]
    elsif num < 26 then num = lower_array[num - number]
    end
  end
  coded_string = coded_array.join
end

p caesar_cipher("What A Feeling!", 2)
p caesar_cipher("ABC ! Andrea ? hekla8397.z", 3)
p caesar_cipher("Andrea is hot!", 5)

p caesar_cipher("ABCDeZ", 1)
p caesar_cipher("aBcDeFz", 1)
p caesar_cipher("What a string!", 5)

