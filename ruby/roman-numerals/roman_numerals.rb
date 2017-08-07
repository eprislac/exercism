class Fixnum

  ROMAN_MAP = [
    ['M', 1_000],
    ['CM', 900],
    ['D', 500],
    ['CD', 400],
    ['C', 100],
    ['XC', 90],
    ['L', 50],
    ['XL', 40],
    ['X', 10],
    ['IX', 9],
    ['V', 5],
    ['IV', 4],
    ['I', 1]
  ]

  def to_roman
    accr = self
    [].tap do |res|
      ROMAN_MAP.map do |item|
        res << item[0] * (accr / item[1])
        accr = accr % item[1]
      end
    end.join
  end
end

module BookKeeping
  VERSION = 2
end

