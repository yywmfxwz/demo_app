class BookInStock      
     attr_reader :isbn, :price, :title  # Read-only

      def initialize(isbn, price, title)
        @isbn  = isbn
        @title = title
        @price = Float(price)
      end  
end
require_relative 'book_in_stock'

class CsvReader

  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    File.foreach(csv_file_name) do |line|
           content = line.chomp.split(",")
           book = BookInStock.new(content[0],content[2], content[1])
           @books_in_stock << book
    end
  end  

  def total_value_in_stock   
    sum = 0.0        
    @books_in_stock.each {|book| sum += book.price}
    sum
  end  

  def number_of_an_isbn(isbn)
    @books_in_stock.count{|book| book.isbn == isbn}
  end
end 
require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name| 
    puts "Processing #{csv_file_name} ........" 
    reader.read_in_csv_data csv_file_name
end

puts "Total stock value = #{reader.total_value_in_stock}"

print "Enter an ISBN ? "  
# STDIN.gets accepts a single line of data from 
# standard input (the keyboard) 
isbn = STDIN.gets.chomp 
puts "ISBN: #{isbn} ; Copies: #{reader.number_of_an_isbn(isbn)}."