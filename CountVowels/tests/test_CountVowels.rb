require "CountVowels.rb"
require "test/unit"

class TestCountVowels < Test::Unit::TestCase

    def setup        
        *args = String.new, String.new, String.new
        @_input, @_output, @_error = args
        @_class, @_message = CountVowels.new, String.new
    end
    
    def teardown
        $stdin, $stdout, $stderr = STDIN, STDOUT, STDERR
    end
    
    def test_main
        @_message << "Your output is incorrect!"
        assert_equal(@_class.main('hello')[:e], 1, @_message)
        assert_equal(@_class.main('waterloo')[:o], 2, @_message)
        assert_equal(@_class.main('rANdoM')[:a], 1, @_message)
        assert_equal(@_class.main('OnoMaTOpoEIA')[:o], 4, @_message)
        assert_equal(@_class.main('EPICORACOHUMERALER')[:e], 3, @_message)
        assert_equal(@_class.main('HONORIFICABILITUDINITATIBUS ')[:i], 7, @_message)
        assert_equal(@_class.main('USSOLZEWIECHINOGAMMARUS')[:u], 2, @_message)
    end

end