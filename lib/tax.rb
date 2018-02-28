# Write a function that takes two arguments; an amount, and a tax percentage. Return an array with the amount of tax in cents.

class Tax
  def convert(a, pct)
    a     = a.to_i if a.is_a? String
    pct   = handle_decimal_percentage(pct) if decimal?(pct)
    pct   = pct[0..1] if pct.to_s.length > 2
    pct   = to_float(pct)
    total = a * pct
    split = decimal_split(total)
    cents = split[-1]

    if cents.length > 2
      cents = cents [0..2]
      cents = cents.to_i.round(-1).to_s[0..1]
    end

    split[-1] = cents
    total     = split.join('.')

    [dollars_to_cents(total)]
  end

  def decimal?(pct)
    pct.to_s.include?(".")
  end

  def handle_decimal_percentage(pct)
    decimal_split(pct)[-1]
  end

  def dollars_to_cents(d)
    (100 * d.to_r).to_i
  end

  def decimal_split(pct)
    pct.to_s.split(".")
  end

  def to_float(p)
    p.to_f / 100
  end
end


if $PROGRAM_NAME == __FILE__
  t = Tax.new
  p t.convert(200.2, 15)       # [3030]
  p t.convert(100.1, 0.15)     # [1510]
  p t.convert(100, 0.15234234) # [1500]
  p t.convert(100, 0.15)       # [1500]
  p t.convert(100, "0.15")     # [1500]
  p t.convert(100, "0.15%")    # [1500]
  p t.convert("100", "15%")    # [1500]
  p t.convert("100.10", "15%") # [1500]
  p t.convert(100, 20)         # [2000]
end