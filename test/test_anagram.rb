require 'minitest/autorun'
require './lib/anagram.rb'

describe Anagram do
  before { @a = Anagram.new }

  def test_anagram_exists
    assert @a
    assert_instance_of Anagram, @a
  end

  describe "Analyzin" do
    def test_suh_dude
      refute @a.analyze('suh', 'dude')
    end

    def test_tacos
      assert @a.analyze('tacos', 'stoca')
    end

    def test_citrus
      assert @a.analyze('citrus', 'rustic')
    end
  end
end