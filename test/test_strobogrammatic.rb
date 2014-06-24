require 'Strobogrammatic'
require 'test/unit'

class TestStrobogrammatic < Test::Unit::TestCase
    def assert_false(condition)
        assert_equal(false, condition)
    end

    def test_that_nil_cannot_be_strobogrammatic
        assert_false(Strobogrammatic::strobogrammatic_pair?(nil, nil))
        assert_false(Strobogrammatic::strobogrammatic_pair?('2', nil))
        assert_false(Strobogrammatic::strobogrammatic_pair?(nil, '4'))
    end

    def test_non_strobogrammatic_numbers
        assert_false(42.strobogrammatic?)
    end

    def test_non_strobogrammatic_numbers_comprised_of_strobogrammatic_numbers
        assert_false(810.strobogrammatic?)
    end

    def test_additive_inverse_of_a_strobogrammatic_number
        assert_false(-69.strobogrammatic?)
    end

    def test_strobogrammatic_numbers
        assert(1961.strobogrammatic?)
        assert(69.strobogrammatic?)
        assert(1908061.strobogrammatic?)
    end
end
