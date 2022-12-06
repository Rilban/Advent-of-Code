input = File.read("dag_06_input.txt")


marker_found = false
marker = input[0..3]
i = 3


while i < input.length
    marker.each_char { |char| 
        if marker.count(char) > 1
            marker_found = false
            break
        else
            marker_found = true
        end
    }
    
    if marker_found
        p i + 1
        break
    end

    marker[0] = ""
    i += 1
    marker << input[i]
end