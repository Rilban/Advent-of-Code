input_file = File.open("dag_03_input.txt")
input = input_file.readlines.map(&:chomp)

sorted_by_group = []
i = 0
group = 0
priorities = "0abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
sum = 0

while i < input.length
    sorted_by_group[group] = [input[i], input[i+1],input[i+2]]
    group += 1
    i += 3
end


for n in sorted_by_group
    priorities.each_char { |char|
        if n[0].include?(char) && n[1].include?(char) && n[2].include?(char)
            sum += priorities.index(char)
            break
        end
    }
end

puts sum