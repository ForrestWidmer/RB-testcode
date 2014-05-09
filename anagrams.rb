=begin 
Write method to take in a jumbled string and a dictionary. Method
should output a list of words that the scrambled string could equal.
example:
"ptors" => ["sport", "ports"]
=end
def grabscrab(anagram, dictionary)
  dictionary.keep_if {|word| word.chars.sort.join == anagram.chars.sort.join}
  dictionary
end

puts grabscrab("ortsp", %w{sport parrot ports matey})