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