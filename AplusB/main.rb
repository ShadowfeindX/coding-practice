arr = gets.chomp.delete(' ').split('')
puts arr[0].to_i.send(:"#{arr[1]}", arr[2].to_i)

#puts ARGV[0].send(:"#{ARGV[1]}", ARGV[2])