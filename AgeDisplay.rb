
puts "\tCounting the seconds:"
puts "What is your age in years?"
years = gets.chomp.to_i
months = years * 12
weeks = years * 52
days = years * 365.242
hours = days * 24
minutes = hours * 60
seconds = minutes * 60

count_array = ["Years","Months","Weeks","Days","Hours","Minutes","Seconds"]
age_array = [years,months,weeks,days,hours,minutes,seconds]
count = 0

while (count < age_array.length)
  puts age_array[count].to_s + " is your age in " + count_array[count]
  count += 1
end

puts age_array[1]
puts age_array[2] 
puts "You are #{weeks} weeks of age." 
puts "You are #{days} days of age."
puts "You are #{hours} hours of age."
puts "You are #{minutes} minutes of age."
puts "You are #{seconds} seconds of age."  


while true
 x = gets.chomp
 break if x == 'Quit'
 puts 'x is not equal to "A"'
end
