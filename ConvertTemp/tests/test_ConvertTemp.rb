require "ConvertTemp.rb"
require "test/unit"

class TestConvertTemp < Test::Unit::TestCase

    def setup        
        *args = String.new, String.new, String.new
        @_input, @_output, @_error = args
        @_class = ConvertTemp.new
    end
    
    def teardown
        $stdin, $stdout, $stderr = STDIN, STDOUT, STDERR
    end
    
    def test_main_0
        i = %w/98.6 F 37.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_1
        i = %w/0.0 C 32.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_2
        i = %w/5.0 F -15.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_3
        i = %w/500.0 F 260.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_4
        i = %w/745.0 C 1373.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_5
        i = %w/10000000085.0 C 18000000185.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_6
        i = %w/2516489789972.0 F 1398049883300.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_7
        i = %w/7894123.0 F 4385606.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_8
        i = %w/1.0 C 33.8/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end
    
    def test_main_9
        i = %w/100.0 C 212.0/
        o = if i[1] == 'F' then "#{i[0]} degrees Fahrenheit is #{i[2]} degrees Celcius." else "#{i[0]} degrees Celcius is #{i[2]} degrees Fahrenheit." end
        assert_equal(o, @_class.main(i[0,2].join(' ')), @_error)
    end

end