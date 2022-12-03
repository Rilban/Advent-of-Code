input_file = File.open("dag_03_input.txt")
file_data = input_file.readlines.map(&:chomp)

sorted_by_group = []
i = 0
group = 0
priorities = "0abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
sum = 0

while i < file_data.length
    sorted_by_group[group] = [file_data[i], file_data[i+1],file_data[i+2]]
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