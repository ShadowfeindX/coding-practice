require "StringReverse.rb"
require "test/unit"

class TestStringReverse < Test::Unit::TestCase

    def setup        
        *args = String.new, String.new, String.new
        @_input, @_output, @_error = args
        @_class, @_message = StringReverse.new, String.new
    end
    
    def teardown
        $stdin, $stdout, $stderr = STDIN, STDOUT, STDERR
    end
    
    def test_main
        *pairs = ['thread', 'daerht'], ['project','tcejorp'], ['palindrome','emordnilap'],  ['desserts','stressed']
        pairs.each do |words|
            print words
            assert_equal(words[1], @_class.main(words[0]))
        end
    end

end