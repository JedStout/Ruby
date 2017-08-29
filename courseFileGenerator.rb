week = 2

def day_counter(week)
    day = 1
    while (day <= 4)
        puts `touch #{week}/Day#{day}.rb`
        day += 1
    end
end

while (week <= 11)
    puts `mkdir Week#{week}`
    day_counter("Week#{week}")
     week += 1
end