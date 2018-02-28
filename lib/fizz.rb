class Fizz
  def buzz(n)
    fizz  = divisible?(n, 3)
    buzz  = divisible?(n, 5)
    ultra = divisible?(n, 7)

    ultra_fizz_buzz = ultra && fizz && buzz
    ultra_fizz      = ultra && fizz
    ultra_buzz      = ultra && buzz
    fizz_buzz       = fizz  && buzz

    case
    when ultra_fizz_buzz then "UltraFizzBuzz"
    when ultra_fizz      then "UltraFizz"
    when ultra_buzz      then "UltraBuzz"
    when fizz_buzz       then "FizzBuzz"
    when ultra           then "Ultra"
    when fizz            then "Fizz"
    when buzz            then "Buzz"
    else n
    end
  end

  def buzz_range(range = 1..100)
    range.map { |n| buzz(n) }
  end

  def divisible?(n, d)
    n % d == 0
  end
end


if $PROGRAM_NAME == __FILE__
  f = Fizz.new
  p f.buzz_range(1..10000)
end
