input_file = File.open("dag_03_input.txt")
file_data = input_file.readlines.map(&:chomp)

priorities = "0abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

sum = 0

for n in file_data
    first_rucksack = n[0..(n.length-1)/2]
    second_rucksack = n[n.length/2..n.length-1]

    first_rucksack.each_char{ |char|
        if second_rucksack.include?(char)
            sum += priorities.index(char)
            break
        end
    }
end

puts sum