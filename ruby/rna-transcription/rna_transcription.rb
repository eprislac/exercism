class Complement
  
  RNA_MAP = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(dna)
    return '' unless (dna.chars.all? { |char| RNA_MAP.keys.include?(char) }) 
    dna.chars.map { |char| RNA_MAP[char] }.join('')
  end
end

module BookKeeping
  VERSION = 4.freeze
end

