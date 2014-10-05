class BookInStock      
     attr_reader :isbn, :price, :title  # Read-only

      def initialize(isbn, price, title)
        @isbn  = isbn
        @title = title
        @price = Float(price)
      end  
end