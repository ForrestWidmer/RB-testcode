def no_odds(values)
  values.each do |val|
    if val % 2 == 0
      puts val      
    end    
  end
end
puts no_odds([1, 2, 3, 4, 5])