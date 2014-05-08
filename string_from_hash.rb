# Complete the solution so that it takes the hash passed in and generates a human 
# readable string from its key/value pairs.

# The format should be "KEY = VALUE". Each key/value pair should be separated 
# by a comma except for the last pair.

# Example: 
# solution({a: 1, b: '2'}) # should return "a = 1,b = 2”

def string_from_hash(pairs)
  pairs.map {|key, value| "#{key} = #{value}"}.join(",")
end

puts string_from_hash({a: 1, b: '2'})