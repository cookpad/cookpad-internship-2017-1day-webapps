class Book
  attr :title, :author, :price, :created

  def initialize(title, author, price, created)
    @title   = title
    @author  = author
    @price   = price
    @created = created
  end

  def to_s
    "#{@author}, \"#{@title}\", #{@created}"
  end
end
