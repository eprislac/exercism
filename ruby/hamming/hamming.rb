class Hamming
  # Computes the Hamming distance between two strings representing DNA strands
  #
  # @param strand_a [String] First DNA strand
  # @param strand_b [String] Second DNA strand
  # @return [Fixnum] The Hamming distance
  def self.compute(strand_a, strand_b )
    raise ArgumentError if strand_a.length != strand_b.length
    a_arr = strand_a.chars
    b_arr = strand_b.chars
    a_arr.zip(b_arr).count { |first, second| first != second }
  end
end

module BookKeeping
  VERSION = 3.freeze
end
