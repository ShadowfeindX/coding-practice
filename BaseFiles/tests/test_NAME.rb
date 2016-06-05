require "NAME.rb"
require "test/unit"

class TestNAME < Test::Unit::TestCase

    def setup        
        *args = String.new, String.new, String.new
        @_input, @_output, @_error = args
        @_class = NAME.new
    end
    
    def teardown
        $stdin, $stdout, $stderr = STDIN, STDOUT, STDERR
    end
    
    def test_main
        StringIO.open(String.new) do |stio|
            $stdout = stio; @_class.main
            @_output = $stdout.string.chomp
        end
        @_error = "Your output is incorrect!"
        assert_equal("", @_output, @_message)
    end

end