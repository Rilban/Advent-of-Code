def antal_fiskar(fiskar,antal_dagar)
    fiskar_antal_dagar = [0, 0, 0, 0, 0, 0, 0, 0 ,0]
    counter = 0

    for n in fiskar
        fiskar_antal_dagar[n] += 1
    end

    while counter < antal_dagar
        fiskar_antal_dagar[0], fiskar_antal_dagar[1], fiskar_antal_dagar[2], fiskar_antal_dagar[3], fiskar_antal_dagar[4], fiskar_antal_dagar[5], fiskar_antal_dagar[6], fiskar_antal_dagar[7], fiskar_antal_dagar[8] =
        fiskar_antal_dagar[1], fiskar_antal_dagar[2], fiskar_antal_dagar[3], fiskar_antal_dagar[4], fiskar_antal_dagar[5], fiskar_antal_dagar[6], fiskar_antal_dagar[0] + fiskar_antal_dagar[7], fiskar_antal_dagar[8], fiskar_antal_dagar[0]
        counter += 1
    end

    sum = 0
    for n in fiskar_antal_dagar
        sum += n
    end
    return sum
end
