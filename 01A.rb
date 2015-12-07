input = File.open('01.txt', 'r')

def find_floor(data)
  floor = 0
  data.each_char do |char|
      floor += 1 if char == '('
      floor -= 1 if char == ')'
  end
  floor
end

puts find_floor(input)
