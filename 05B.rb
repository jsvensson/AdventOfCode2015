class String
  def is_nice?
      self =~ /(..).*\1/ &&  # Pair of characters repeated in string
      self =~ /(.).\1/       # Character repeated with one character between ('xyx')
  end
end

data = File.open('05.txt', 'r')
puts data.each_line.count { |line| line.is_nice? }
