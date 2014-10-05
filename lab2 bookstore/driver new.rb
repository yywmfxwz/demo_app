require_relative 'csv_reader'
 require_relative 'commands/quit_command'
 require_relative 'commands/genre_search_command'
reader = CsvReader.new

commands = [
     AuthorSearchCommand.new(data_source),
     GenreSearchCommand.new(data_source),     
     NumberOfCopiesCommand.new(data_source),
     UpdateBookCommand.new(data_source),
     QuitCommand.new(data_source)
 ]    
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