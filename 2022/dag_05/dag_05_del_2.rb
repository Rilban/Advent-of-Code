input_file = File.open("dag_05_input.txt")
input = input_file.readlines.map(&:chomp)

crate_stacks = [["W", "R", "F"],["Y", "H", "M", "C", "D", "V", "W", "P"],["P", "M", "Z", "N", "L"],["J", "C", "H", "R"],["C", "P", "G", "H", "Q", "T", "B"],["G", "C", "W", "L", "F", "Z"],["W", "V", "L", "Q", "Z", "J", "G", "C"],["P", "N", "R", "F", "W", "T", "V", "C"],["J", "W", "H", "G", "R", "S", "V"]]

test_crate_stacks = [["Z", "N"],["M", "C", "D"],["P"]]

def move_boxes_to_stack(crate_stacks, nbr_boxes, from, to)
    if crate_stacks[from-1].length == 0
        return crate_stacks
    end
    crate_stacks[to-1] << crate_stacks[from-1].pop(nbr_boxes)
    crate_stacks[to-1].flatten!
    crate_stacks
end

for instructions in input
    instructions_split = instructions.split
    # p instructions_split
    move_boxes_to_stack(crate_stacks, instructions_split[1].to_i, instructions_split[3].to_i, instructions_split[5].to_i)
end

crate_order = ""

for n in crate_stacks
    crate_order << n[-1]
end

p crate_order