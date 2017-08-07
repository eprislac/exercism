class RnaTranscription
  
  TRANSCRIPTION_TABLE = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }.freeze

  def self.of_dna(strand)
    strand.chars.map { |char| TRANSCRIPTION_TABLE[char.to_sym] }
  end
end

module BookKeeping
  VERSION = 4.freeze
end
