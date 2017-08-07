class Gigasecond
  OFFSET = 1_000_000_000.freeze
  # Get the date one gigasecond from the given Time object
  #
  # @param time [Time] The given time
  # @return [Time]
  def self.from(time)
    time + OFFSET
  end
end

module BookKeeping
  VERSION = 6.freeze
end
