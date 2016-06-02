#load 'DEPEND'

class PigLatin
    def main(input)
        words = input.split
        words.each do |word|
            index = word.downcase.index(/[aeiouy]/)
            word.replace(latin(word.chars, index))
        end
        return words.join(' ')
    end
    
    def latin(word, index)
        if index == 0
             word.push('-way')
        else
            word.push('-')
            index.times do
                word.push(word.shift)
            end
            word.push('ay')
        end
        return word.join
    end
end

program = PigLatin.new
#puts "in pig latin is...", program.main(gets.chomp)