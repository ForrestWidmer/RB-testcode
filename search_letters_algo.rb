=begin
Create a method to accept one arbitrary string as an argument, and return a string of 
length 26.

The objective is to detect if letters of the alphabet (upper or lower case) are present 
  anywhere in the string, and to set each of the 26 characters corresponding to each 
  letter to either '1' if present, '0' if not.

So if an 'a' or an 'A' appears anywhere in the argument string (any number of times), set
 the first character of the returned string to '1' otherwise to '0', if 'b' or 'B' then 
 the second to '1', and so on for the rest of the alphabet.

So the returned string consists only of '1's and '0's.

For instance

change('a   **&  bZ') =>  '11000000000000000000000001'
=end

def change(input)
  ("a".."z").map {|letter| input.downcase.include?(letter) ? "1" : "0"}.join
end
#iterate through the alphabet.
#take input string and downcase it.
#check if the input includes the current letter.
#if true, add "1", if false add "0".
puts change("string")
# => "00000010100001000111000000"