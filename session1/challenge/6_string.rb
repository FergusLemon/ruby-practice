# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  char_arr = string.chars
  odd_arr = char_arr.select.with_index { |x, i| i % 2 != 0 }
  even_arr = char_arr.select.with_index { |x, i| i % 2 == 0 }

  return_odds ? odd_arr.join : even_arr.join
end
