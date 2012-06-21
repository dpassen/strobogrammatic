module Strobogrammatic
    def strobogrammatic?
        unless (to_s =~ /[23457]/).nil? && to_s.count("6") == to_s.count("9")
            false
        else
            sixes = (0 .. to_s.length - 1).find_all { |i| to_s[i,1] == '6' }
            nines = (0 .. to_s.length - 1).find_all { |i| to_s[i,1] == '9' }
            sixes.zip(nines.reverse).collect { |i,j| i + j }.all? { |n| n == (to_s.length - 1) }
        end
    end
end

class Numeric
    include Strobogrammatic
end
