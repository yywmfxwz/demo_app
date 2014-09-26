
class BookInStock      
  $GENRE = ['Programming', 'Web Development','S/w Engineering']
  attr_accessor :price, :title, :author, :genre, :quantity
  attr_reader :isbn
  
  def initialize(isbn, title, author, genre, price, quantity)
    @isbn  = isbn
    @title = title
    @price = Float(price)
    @author = author
    @genre = genre
    @quantity = quantity
  end  

  def to_s
  	"#{@title} by #{@author} (#{@isbn}) - #{@genre} - #{@quantity} copies"
  end

end
