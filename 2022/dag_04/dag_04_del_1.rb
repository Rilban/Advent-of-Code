input_file = File.open("dag_04_input.txt")
file_data = input_file.readlines.map(&:chomp)


contained_pairs = 0

for n in file_data
    first_range = n.split(",")[0]
    second_range = n.split(",")[1]

    first_range_start = first_range.split("-")[0].to_i
    first_range_end = first_range.split("-")[1].to_i
    second_range_start = second_range.split("-")[0].to_i
    second_range_end = second_range.split("-")[1].to_i

    if (first_range_start <= second_range_start && first_range_end >= second_range_end) || (second_range_start <= first_range_start && second_range_end >= first_range_end)
        contained_pairs += 1
    elsif ()
    end

end

puts contained_pairs