class Prime
  def self.nth(num)
    raise ::ArgumentError if num <= 0
    atkin_sieve(num**2)[num - 1]
  end

  def self.atkin_sieve(limit)
    results = [2, 3]
    sieve = [].tap { |arr| (limit).times { arr << false } }
    x = 1
    while (x**2 < limit) do
      y = 1
      while (y**2 < limit) do
        n = (4 * x * x) + y*y
        sieve[n] = true if (n <= limit && (n % 12 == 1 || n % 12 == 5))
        n = (3 * x * x) + y*y
        sieve[n] = true if (n <= limit) && (n % 12 == 7)
        n = (3 * x * x) - y*y
        sieve[n] = true if ((x > y) && (n <= limit) && (n % 12 == 11))
        y+=1
      end
      x+=1
    end

    r = 5
    while (r*r < limit) do
      if (sieve[r])
        i = r*r
        while (i < limit) do
          sieve[i] = false;
          i += r*r
        end
      end
      r+=1
    end

    results.tap do |arr|
      i = 0
      while (i < sieve.count) do
        arr << i if sieve[i]
        i += 1
      end
    end
  end
end

