# you will be given a file name
# inside the file will be a series of numbers
# find the largest number on each line
# return their sum
#
# EXAMPLE
#     file: nums.txt
#      406 217 799 116 45 651 808 780 
#      205 919 474 567 712 
#      776 170 681 86 822 9 100 540 812 
#      602 117 181 169 876 336 
#      434 165 725 187 974 48
#
# line_sums('nums.txt')   # =>   808 + 919 + 822 + 876 + 974   # =>   4399

def line_sums(filename)
  content = File.readlines(filename)
  sum = 0
  num_arr = []
  content.each do |line|
    string_arr = line.split()
    string_arr.each do |string|
      num_arr << string.to_i
    end
    largest_num = num_arr.sort.pop
    sum += largest_num
    num_arr =[]
  end
  sum
end
