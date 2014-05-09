# File.open("text_data.txt") do |txt_file|
#   txt_file.each do |line|
#     puts "#{txt_file.lineno}: #{line}" if line =~ /or/
#   end
# end
pattern = /or/
File.open("text_data.txt") do |txt_file|
  txt_file.each do |line|
    if line =~ pattern
      line.sub!(pattern, "=>OR<=")
      puts "#{txt_file.lineno}: #{line}"
    end
  end
end