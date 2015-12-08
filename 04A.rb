require 'digest'

def advent_mine(key, num)

match = Array.new(num, '0').join('')
  0.upto(1_000_000_000) do |i|
    hash = Digest::MD5.hexdigest("#{key}#{i}")
    break i if hash.to_s.start_with?(match)
  end
end

key = 'yzbqklnj'
p advent_mine(key, 5)
p advent_mine(key, 6)
