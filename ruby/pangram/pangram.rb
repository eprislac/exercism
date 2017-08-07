class Pangram
  require 'benchmark'
  
  # My first one-liner solution 
  # (slow, benchmarks twice as slow as the solution below)
  def self.pangram2?(phrase)
    phrase.downcase.gsub(/[^a-z]/, '').chars.uniq.count == 26
  end
  
  # Not a one-liner, and a little harder to read, 
  #   but takes half the time to run.
  #   Inspired by @ncs-alane's solution
  def self.pangram?(phrase)
    phrase.downcase.bytes.uniq.select do |byte| 
      (byte > 96) && (byte < 123)
    end.size == 26
  end

  # Benchmark, this demonstrates the difference in speed between the two methods
  def self.bench
    n = 50000
    phrase1 = 'The quick brown fox jumps over the lazy dog'
    phrase2 = 'Not hotdog'

    Benchmark.bm do |x|
      x.report { n.times { pangram? phrase1 ; pangram? phrase2 } }
      x.report { n.times { pangram2? phrase1 ; pangram2? phrase2 } }
    end
  end
end

module BookKeeping
  VERSION = 4
end

