
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
  coded_string
end

p caesar_cipher("What a string!", 5)

