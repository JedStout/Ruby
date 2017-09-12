#### GIT YA SOME  ####

puts `git add .`

puts "Type commit message"
comment = gets.strip
puts `git commit -m '#{comment}'`

puts `git push origin master`

puts `clear`