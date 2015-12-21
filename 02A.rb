data = File.open('02.txt', 'r')

def get_area(parcel)
  length, width, height = parcel.split('x').map(&:to_i)
  sides = [
    length * width,
    width * height,
    height * length
  ]

  sides.map { |side| 2 * side }.inject(:+) + sides.min
end

parcels = data.map { |line| get_area(line) }
puts parcels.inject(:+)
