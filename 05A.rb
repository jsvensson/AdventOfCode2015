def nice_string?(string)
  string.count('aeiou') >= 3 &&  # Three vowels
  string =~ /(.)\1/ &&           # At least one letter twice in a row
  string !~ /ab|cd|pq|xy/        # ...and none of these combinations
end

data = File.open('05.txt', 'r')
puts data.each_line.count { |line| nice_string?(line) }
