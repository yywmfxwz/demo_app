class UserCommand

    def initialize(data_source)
	    @data_source = data_source
    end
end
require_relative 'user_command'

class NumberOfCopiesCommand < UserCommand

	def initialize (data_source)
		super (data_source)
		@isbn = ''
	end

	def title 
		'Check no. of copies in stock'
	end

   def input
		puts 'No. of copies.'
		print "ISBN? "   
		@isbn = STDIN.gets.chomp  
   end

    def execute
    	result = @data_source.findISBN(@isbn)
    	if result
    	   puts "No. of copies = #{result.quantity}"
    	else
    		puts "Invalid ISBN"
    	end
	end

end
require_relative 'user_command'
class QuitCommand < UserCommand

	def initialize(data_source)
		super (data_source)
	end

	def title 
		'Quit.'
	end

   def input
   end

    def execute
       @data_source.stop
       puts 'Goodbye!'
	end

end
require_relative 'user_command'

class UpdateBookCommand < UserCommand

	def initialize (data_source)
		super (data_source)
		@isbn = ''
	end

	def title 
		'Update Book.'
	end

  def input
   	 puts 'Update Book.'
	   print "ISBN? "   
	   @isbn = STDIN.gets.chomp  
  end

    def execute
       book = @data_source.findISBN @isbn
       if book
          puts '[Hit <return> key to skip to next field]'
          print "Author (#{book.author}) ?"
          response = STDIN.gets.chomp 
          book.author = response if response.length > 0 
          print "Title (#{book.title}) ?"
          response = STDIN.gets.chomp 
          book.title = response if response.length > 0 
          puts "Genre (#{book.genre})."
          $GENRE.each_index {|i| print " (#{i+1}) #{$GENRE[i]} "}
          print ' ? '
          response = STDIN.gets.chomp.to_i 
          book.genre = $GENRE[response - 1] if (1..$GENRE.length).member? response 
        else
          puts 'Invalid ISBN'
        end
	end 

end
require_relative 'user_command'

class AuthorSearchCommand < UserCommand

	def initialize (data_source)
		super (data_source)
		@author = ''
	end

	def title 
		'Search by author.'
	end

   def input
   	   puts 'Search by Author.'
	   print "Author mame? "   
	   @author = STDIN.gets.chomp  
   end

    def execute
       @data_source.authorSearch(@author).each {|b| puts b }
	end

end