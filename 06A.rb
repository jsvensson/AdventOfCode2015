def parse_instruction(string, grid)
  match = string.match(/(\d+),(\d+) through (\d+),(\d+)/)
  x1, y1, x2, y2 = match.captures.map(&:to_i)

  lights = (x1..x2).to_a.product((y1..y2).to_a)

  case string
  when /turn on/
    lights.each { |light| grid[light] = true }
  when /turn off/
    lights.each { |light| grid[light] = false }
  when /toggle/
    lights.each { |light| grid[light] = !grid[light] }
  end
  grid
end

data = File.open('06.txt', 'r')

grid = Hash.new(false)
data.each_line do |instruction|
  grid = parse_instruction(instruction, grid)
end

p grid.values.select { |light| light }.count
