input = File.open('01.txt', 'r')

def find_step(data)
  floor = 0
  data.each_char.with_index(1) do |char, step|
      floor += 1 if char == '('
      floor -= 1 if char == ')'

      if floor == -1
        break "Answer: #{step}"
      end
  end
end

puts find_step(input)
