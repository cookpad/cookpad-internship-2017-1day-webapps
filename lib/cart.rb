class Cart
  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end

  def total
    total = 0
    @books.each do |book|
      total += book.price
    end
    total
  end
end
