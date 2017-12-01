require 'test/unit'

require 'book'

class BookTest < Test::Unit::TestCase
  def test_title
    book = Book.new('Enterprise Rails', 'Dan Chak', 31.32, '2008-11-3')

    assert_equal('Enterprise Rails', book.title)
  end

  def test_author
    book = Book.new('Enterprise Rails', 'Dan Chak', 31.32, '2008-11-3')

    assert_equal('Dan Chak', book.author)
  end

  def test_to_s
    book = Book.new('Enterprise Rails', 'Dan Chak', 31.32, '2008-11-3')

    assert_equal('Dan Chak, "Enterprise Rails", 2008-11-3', book.to_s)
  end
end
