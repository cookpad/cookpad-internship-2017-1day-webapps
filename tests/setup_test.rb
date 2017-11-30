require 'test/unit'

class SetupTest < Test::Unit::TestCase
  def test_ruby
    assert(RUBY_VERSION > '2.3.0')
  end

  def test_docker
    unless /Microsoft/.match(`uname -r`)
      assert_not_empty(`which docker-compose`)
      assert_not_empty(`docker images -q postgres:alpine`)
    end
  end

  def test_pg
    assert_nothing_raised do
      require 'pg'
    end
  end
end
