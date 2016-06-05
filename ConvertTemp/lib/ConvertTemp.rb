#load 'DEPEND'

class ConvertTemp
    def main(n)
        exit if n.empty?
        temp, scale = n.split(' ')
        abort "#{temp} is not a valid number!" if temp !~ /-?\d+/
        temp = temp.to_f
        case scale
            when 'C'
                f = 1.8*temp + 32
            when 'F'
                c = (5.0/9.0)*(temp-32)
        else
            abort "Must specify Celcius or Fahrenheit"
        end
        if f.nil?
            "#{temp} degrees Fahrenheit is #{c.round(1)} degrees Celcius."
        else
            "#{temp} degrees Celcius is #{f.round(1)} degrees Fahrenheit."
        end
    end
end

#program = ConvertTemp.new
#print 'Please enter a temperature and a scale (C or F): '
#$stdout.flush
#program.main(gets.chomp)