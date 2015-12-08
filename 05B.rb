def nice_string?(string)
    string =~ /(..).*\1/ &&  # Pair of characters repeated in string
    string =~ /(.).\1/       # Character repeated with one character between ('xyx')
end

data = File.open('05.txt', 'r')
puts data.each_line.count { |line| nice_string?(line) }
