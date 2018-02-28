# Write a function that takes two words as its arguments and returns true if they are anagrams (contain the exact same letters) and false otherwise.

class Anagram
  def analyze(one, two)
    one.chars.sort == two.chars.sort
  end
end

if $PROGRAM_NAME == __FILE__
  a = Anagram.new
  p a.analyze('suh', 'dude')
  p a.analyze('tacos', 'stoca')
  p a.analyze('citrus', 'rustic')
end
