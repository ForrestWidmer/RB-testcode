# Complete the Compute method/function so that if a block is given 
# it will run else it returns "Do not compute".

def compute
  if block_given?
    yield
  else
    puts "Do not compute"
  end
end

# OR => block_given? ? yield : "Do not compute"

compute {puts "Hello"}
compute