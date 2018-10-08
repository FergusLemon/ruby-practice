# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  s = string
  l = string.length
  limit = l - 1
  new_s = ""
  s.each_char.with_index { |c, i| new_s << s[i+1] if (i < limit) && (c == "r" || c == "R") }
  new_s
end
