require 'test/unit'

require 'book'
require 'cart'

class CartTest < Test::Unit::TestCase
  def test_total
    cart = Cart.new
    cart.add Book.new('Learning Web Design', 'Jennifer Niederst Robbins', 28.0, '2012-08-01')
    cart.add Book.new('Head First HTML and CSS', 'Elisabeth Robson', 48.0, '2012-08-01')
    cart.add Book.new('WebGL: Up and Running', 'Tony Parisi', 38.0, '2012-08-01')

    assert_equal(114.0, cart.total)
  end
end
