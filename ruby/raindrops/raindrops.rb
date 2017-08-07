class Raindrops
  def self.convert(num)
    response = Raindrops.lookup(num).select { |key, value| value }.keys.join('')
    response.empty? ? num.to_s : response
  end

  def self.lookup(num)
    {
      'Pling' => (num % 3).zero?,
      'Plang' => (num % 5).zero?,
      'Plong' => (num % 7).zero?
    }
  end
end

module BookKeeping
  VERSION = 3
end

