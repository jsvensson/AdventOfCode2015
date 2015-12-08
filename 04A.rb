require 'digest'

def advent_mine(num)
key = 'yzbqklnj'
match = Array.new(num, '0').join('')
  0.upto(1_000_000_000) do |i|
    hash = Digest::MD5.hexdigest("#{key}#{i}")
    break i if hash.to_s.start_with?(match)
  end
end

p advent_mine(5)
p advent_mine(6)
