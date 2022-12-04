input_file = File.open("dag_02_input.txt")
input = input_file.readlines.map(&:chomp)

rock = 1
paper = 2
scissor = 3
loss = 0
draw = 3
win = 6

points= []
index = 0

# X means you need to lose, Y means you need to end the round in a draw, and Z means you need to win.
# A for Rock, B for Paper, and C for Scissors
# 1 for Rock, 2 for Paper, and 3 for Scissors

for n in input

    if n[0] == "A"

        if n[2] == "Z"
            points[index] = win + paper

        elsif n[2] == "Y"
            points[index] = draw + rock

        elsif n[2] == "X"
            points[index] = loss + scissor

        end

    elsif n[0] == "B"

        if n[2] == "Z"
            points[index] = win + scissor

        elsif n[2] == "Y"
            points[index] = draw + paper

        elsif n[2] == "X"
            points[index] = loss + rock

        end

    elsif n[0] == "C"
        
        if n[2] == "Z"
            points[index] = win + rock

        elsif n[2] == "Y"
            points[index] = draw + scissor

        elsif n[2] == "X"
            points[index] = loss + paper

        end
    end
    index += 1
end

puts points.sum