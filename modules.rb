module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

class VowelFinder
  include Summable
  include Enumerable
  def initialize(string)
    @string = string
  end
  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end
end

puts [1, 2, 3, 4, 5, 6, 7, 8].sum
puts ('a'..'z').sum
vf = VowelFinder.new("some super long string where I need to find the vowels for some reason.")
puts vf.sum