input_file = File.open("dag_01_input.txt")
file_data = input_file.readlines.map(&:chomp)

calories_summed = []
index = 0

for n in file_data
    if n == ""
        index += 1
    elsif calories_summed[index] == nil
        calories_summed[index] = n.to_i
    else
        calories_summed[index] += n.to_i
    end
end 

p calories_summed.max()