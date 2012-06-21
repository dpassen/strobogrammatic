module Strobogrammatic
    def strobogrammatic?
        (to_s =~ /[23457]/).nil?
    end
end

class Numeric
    include Strobogrammatic
end
