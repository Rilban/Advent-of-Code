def summa_till(n)
    return n*(n+1)/2
end

def fuel_calculator(koordinater)
    test_koordinat = 0
    while test_koordinat <= koordinater.length
        sum_differens = 0
        for n in koordinater
            sum_differens += summa_till((n-test_koordinat).abs)
        end
        if test_koordinat == 0
            sum_differens_min = sum_differens
        elsif sum_differens_min > sum_differens 
            sum_differens_min = sum_differens
        end
        test_koordinat += 1
    end
    return sum_differens_min
end