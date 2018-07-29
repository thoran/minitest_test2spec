require 'minitest/autorun'

class TC_Class_methods < MiniTest::Test

  def setup
  end

  def test_something0
    assert_equal expected, found
  end

  def test_something1
    assert 'this' =~ /this/
  end

  def test_something2
    assert_nil nil
  end

  def teardown
  end

end
