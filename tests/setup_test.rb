require 'test/unit'

class SetupTest < Test::Unit::TestCase
  def test_ruby
    assert(RUBY_VERSION > '2.4.0')
  end

  def test_docker
    assert_not_empty(`which docker-compose`)
    assert_not_empty(`docker images -q postgres:alpine`)
  end

  def test_pg
    assert_nothing_raised do
      require 'pg'
    end
  end
end
