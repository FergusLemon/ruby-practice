# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.
require 'humanize'
class BeerSong
  attr_accessor :bottles

  def initialize(bottles)
    @bottles = bottles
  end

  def print_song
    self.check_bottles(@bottles)

    while self.bottles > 0
      if self.bottles != 1
        puts "#{@bottles.humanize.capitalize} bottles of beer on the wall,"
        puts "#{@bottles.humanize.capitalize} bottles of beer,"
        print @bottles
        puts "Take one down, pass it around,"
        @bottles -= 1
        puts "#{@bottles.humanize.capitalize} bottles of beer on the wall."
      else
        puts "#{@bottles.humanize.capitalize} bottle of beer on the wall,"
        puts "#{@bottles.humanize.capitalize} bottle of beer,"
        puts "Take one down, pass it around,"
        @bottles -= 1
        puts "#{@bottles.humanize.capitalize} bottles of beer on the wall."
      end
    end
  end

  def check_bottles(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end
end
