input_file = File.open("dag_07_test_input.txt")
input = input_file.readlines.map(&:chomp)


p input

directories = {}

last_command = ""
for n in input
    if n[0] == "$"
        last_command = n
    end
    if last_command == 
end
p last_command