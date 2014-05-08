=begin
used to quickly generate file names for example test code.
rather then creating multiple files by hand, I just run this method to have them
printed to the console which I can then copy/paste into the command line and create
them all at once. 
=end

def multiply_file_names(file, range, index)
  num = 1
  range.each do
    file[index] = "#{num.to_s}"
    num.to_i
    num += 1
    puts file
  end
end

multiply_file_names("ex0.rb", (1..10), 2)