require 'Strobogrammatic'
require 'test/unit'

class TestStrobogrammatic < Test::Unit::TestCase
    def test_non_strobogrammatic_numbers
        assert_equal(false, 42.strobogrammatic?)
        assert_equal(false, 810.strobogrammatic?)
        assert_equal(false, -69.strobogrammatic?)
    end

    def test_strobogrammatic_numbers
        assert(1961.strobogrammatic?)
        assert(69.strobogrammatic?)
        assert(1908061.strobogrammatic?)
    end
end
