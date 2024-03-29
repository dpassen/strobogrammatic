module Strobogrammatic
  @strobogrammatic_pairs = {
    '0' => '0',
    '1' => '1',
    '6' => '9',
    '8' => '8',
    '9' => '6'
  }

  def self.strobogrammatic_pair?(a, b)
    !a.nil? && !b.nil? && @strobogrammatic_pairs[a] == b
  end
end

class Integer
  def strobogrammatic?
    midpoint = (to_s.length / 2.0).ceil
    to_s[0...midpoint]
      .split(//)
      .each_with_index
      .map do |char, index|
        Strobogrammatic.strobogrammatic_pair?(char, to_s.reverse[index, 1])
      end
      .all?
  end
end
