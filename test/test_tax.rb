require 'minitest/autorun'
require './lib/tax.rb'

describe Tax do
  before { @t = Tax.new }

  def test_tax_exists
    assert @t
    assert_instance_of Tax, @t
  end

  describe "That conversion" do
    def test_one_hundred
      assert_equal [1500], @t.convert(100, 15)
      assert_equal [2000], @t.convert(100, 20)
    end

    def test_one_hundred_edge_cases
      assert_equal [1500], @t.convert(100, 0.15)
      assert_equal [1500], @t.convert(100, "0.15")
      assert_equal [1500], @t.convert(100, "0.15%")
      assert_equal [1500], @t.convert("100", "15%")
      assert_equal [1500], @t.convert("100.10", "15%")
      assert_equal [2000], @t.convert(100, 20)
    end
  end
end