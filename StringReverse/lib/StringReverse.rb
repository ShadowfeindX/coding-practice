#load 'DEPEND'

class StringReverse
    def main(word)
        word.reverse
    end
end

program = StringReverse.new
puts program.main(gets.chomp)