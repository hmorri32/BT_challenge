require 'minitest/autorun'
require "./lib/fizz.rb"

describe Fizz do
  before { @f = Fizz.new }

  def test_fizz_exists
    assert @f
    assert_instance_of Fizz, @f
  end

  describe "UltraFizz given N" do
    describe "the fizz situation" do
      def test_three
        assert_equal "Fizz", @f.buzz(3)
      end

      def test_six
        assert_equal "Fizz", @f.buzz(6)
      end

      def test_nine
        assert_equal "Fizz", @f.buzz(9)
      end

      def test_three_hundred
        assert_equal "Fizz", @f.buzz(303)
      end
    end

    describe "buzz" do
      def test_five
        assert_equal "Buzz", @f.buzz(5)
      end

      def test_ten
        assert_equal "Buzz", @f.buzz(10)
      end

      def test_five_hundred
        assert_equal "Buzz", @f.buzz(505)
      end
    end

    describe "ultra" do
      def test_seven
        assert_equal "Ultra", @f.buzz(7)
      end

      def test_fourteen
        assert_equal "Ultra", @f.buzz(14)
      end
    end

    describe "FizzBuzz" do
      def test_fifteen
        assert_equal "FizzBuzz", @f.buzz(15)
      end

      def test_30
        assert_equal "FizzBuzz", @f.buzz(30)
      end

      def test_three_hundred
        assert_equal "FizzBuzz", @f.buzz(300)
      end
    end

    describe "UltraBuzz" do
      def test_thirty_five
        assert_equal "UltraBuzz", @f.buzz(35)
      end
    end

    describe "UltraFizz" do
      def test_twenty_one
        assert_equal "UltraFizz", @f.buzz(21)
      end
    end

    describe "UltraFizzBuzz" do
      def test_one_hundred_five
        assert_equal "UltraFizzBuzz", @f.buzz(105)
      end
    end
  end

  describe "UltraFizz given a range" do
    def test_one_to_one_hundred
      expected = [1, 2, "Fizz", 4, "Buzz", "Fizz", "Ultra", 8, "Fizz", "Buzz", 11, "Fizz", 13, "Ultra", "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "UltraFizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", "Ultra", 29, "FizzBuzz", 31, 32, "Fizz", 34, "UltraBuzz", "Fizz", 37, 38, "Fizz", "Buzz", 41, "UltraFizz", 43, 44, "FizzBuzz", 46, 47, "Fizz", "Ultra", "Buzz", "Fizz", 52, 53, "Fizz", "Buzz", "Ultra", "Fizz", 58, 59, "FizzBuzz", 61, 62, "UltraFizz", 64, "Buzz", "Fizz", 67, 68, "Fizz", "UltraBuzz", 71, "Fizz", 73, 74, "FizzBuzz", 76, "Ultra", "Fizz", 79, "Buzz", "Fizz", 82, 83, "UltraFizz", "Buzz", 86, "Fizz", 88, 89, "FizzBuzz", "Ultra", 92, "Fizz", 94, "Buzz", "Fizz", 97, "Ultra", "Fizz", "Buzz"]
      assert_equal expected, @f.buzz_range
    end
  end
end
