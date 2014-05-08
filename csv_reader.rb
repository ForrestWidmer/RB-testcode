class CsvReader
require 'csv' # load csv library
# use require_relative to load book_in_stock since they are both in the same dir.
require_relative 'book_in_stock' 

  def initialize
    @books_in_stock = []
  end

  # CSV.foreach(csv_file_name, headers: true) - Tell CSV library to open the file 
  # with the given name. "headers: true" tells the library to parse the first line 
  # of the file as the names of the columns. 
  # The library then reads the rest of the file, passing each row to the block.
  # Inside the block, we extract the data from the desired columns and use that
  # to build our new BookInStock object that then gets passed into the array.

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
    end
  end

  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end

  def number_of_each_isbn
    
  end
end