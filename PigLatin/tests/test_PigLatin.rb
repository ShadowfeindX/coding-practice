require "PigLatin.rb"
require "test/unit"

class TestPigLatin < Test::Unit::TestCase

    def setup        
        *args = String.new, String.new, String.new
        @_input, @_output, @_error = args
        @_class, @_message = PigLatin.new, String.new
    end
    
    def teardown
        $stdin, $stdout, $stderr = STDIN, STDOUT, STDERR
    end
    
    def test_main
        @_message << "Your output is incorrect!"
        *pairs = ['I like to eat fried chicken', 'I-way ike-lay o-tay eat-way ied-fray icken-chay']
        assert_equal(pairs[1], @_class.main(pairs[0]), @_message)
        *pairs = ['Type your text below to convert to Pig Latin Converter', 'ype-Tay our-yay ext-tay elow-bay o-tay onvert-cay o-tay ig-Pay atin-Lay onverter-Cay']
        assert_equal(pairs[1], @_class.main(pairs[0]), @_message)
        *pairs = ['Pig Latin', 'ig-Pay atin-Lay']
        assert_equal(pairs[1], @_class.main(pairs[0]), @_message)
    end
    
    
    def test_latin
        @_message << "Your output is incorrect!"
        *pairs = ['pig', 'ig-pay'], ['banana', 'anana-bay'], ['trash', 'ash-tray'], ['happy', 'appy-hay']
        pairs.each do |words|
            characters = words[0].chars
            first_vowel = words[0].index(/[aeiouy]/)
            assert_equal(words[1], @_class.latin(characters, first_vowel), @_message)
        end
        *pairs = ['duck', 'uck-day'], ['eat', 'eat-way'],  ['omelet', 'omelet-way'], ['are', 'are-way']
         pairs.each do |words|
            characters = words[0].chars
            first_vowel = words[0].index(/[aeiouy]/)
            assert_equal(words[1], @_class.latin(characters, first_vowel), @_message)
        end
    end

end