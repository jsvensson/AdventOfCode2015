data = File.open('02.txt', 'r')

def get_ribbon_length(parcel)
  length, width, height = sides = parcel.split('x').map(&:to_i)
  side1, side2, * = sides.sort

  wrap = side1 * 2 + side2 * 2
  bow = length * width * height

  wrap + bow
end

ribbons = data.map { |line| get_ribbon_length(line) }.inject(:+)
puts ribbons
