#load 'DEPEND'

class CountVowels
    def main(input)
        vowels = {}
        input.downcase.chars.each do |c|
            c.match(/[aeiou]/) do |v|
                v = v.to_s.to_sym
                vowels[v] = 0 unless vowels[v]
                vowels[v] += 1
            end
        end; vowels
        #// your code goes here
    end
end

program = CountVowels.new
puts program.main(gets.chomp)