require 'set'

def santa_walk(instructions)
  houses = Set.new
  x, y = 0, 0
  houses << [x, y]

  instructions.each_char do |dir|
    case dir
    when '^' then y += 1
    when 'v' then y -= 1
    when '<' then x -= 1
    when '>' then x += 1
    end
    houses << [x, y]
  end
  houses.length
end

input = File.open('03.txt', 'r')
p santa_walk(input)
