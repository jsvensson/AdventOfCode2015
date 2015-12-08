require 'set'

def parse_direction(x, y, dir)
  case dir
  when '<' then x -= 1
  when '>' then x += 1
  when 'v' then y -= 1
  when '^' then y += 1
  end
  [x, y]
end

def robot_santa_walk(input)
  visited = Set.new
  visited << [0, 0]
  xs, ys = 0, 0
  xr, yr = 0, 0

  input.each_slice(2) do |dir|
    sdir, rdir = dir
    xs, ys = parse_direction(xs, ys, sdir)
    xr, yr = parse_direction(xr, yr, rdir)
    visited << [xs, ys]
    visited << [xr, yr]
  end
  visited.length
end

input = File.open('03.txt', 'r').each_char
p robot_santa_walk(input)
