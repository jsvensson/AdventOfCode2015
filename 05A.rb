class String
  def is_nice?
    self.count('aeiou') >= 3 &&  # Three vowels
    self =~ /(.)\1/ &&           # At least one letter twice in a row
    self !~ /ab|cd|pq|xy/        # ...and none of these combinations
  end
end

data = File.open('05.txt', 'r')
puts data.each_line.count { |line| line.is_nice? }
