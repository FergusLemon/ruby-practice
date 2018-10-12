# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
def staircase(number)
  num_arr = Array.new(number, 0)
  num_arr = num_arr.map.with_index { |num, i| num = i + 1 }
  h = {}
  num_arr.select { |num| h[num] = num_arr.select { |x| x < num && x%2 == 0 } if num%2 != 0 }
  h
end
