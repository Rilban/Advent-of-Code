input_file = File.open("dag_02_input.txt")
file_data = input_file.readlines.map(&:chomp)

rock = 1
paper = 2
scissor = 3
loss = 0
draw = 3
win = 6

points= []
index = 0

# X for Rock, Y for Paper, and Z for Scissors
# A for Rock, B for Paper, and C for Scissors
# 1 for Rock, 2 for Paper, and 3 for Scissors

for n in file_data

    if n[0] == "A"

        if n[2] == "X"
            points[index] = rock + draw

        elsif n[2] == "Y"
            points[index] = paper + win

        elsif n[2] == "Z"
            points[index] = scissor + loss

        end

    elsif n[0] == "B"

        if n[2] == "X"
            points[index] = rock + loss

        elsif n[2] == "Y"
            points[index] = paper + draw

        elsif n[2] == "Z"
            points[index] = scissor + win

        end

    elsif n[0] == "C"
        
        if n[2] == "X"
            points[index] = rock + win
        elsif n[2] == "Y"
            points[index] = paper + loss
        elsif n[2] == "Z"
            points[index] = scissor + draw
        end
    end
    index += 1
end

puts points.sum