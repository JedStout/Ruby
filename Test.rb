commandList = ['mv', 'cp', 'mkdir', 'ls', 'rm']

# puts "Select an option to see output"
# commandList.sort.each_with_index do |cmd, index|
#   puts "#{index + 1}) #{cmd}"
# end

puts "Select an option to see output"
commandList.sort.each_with_index do |cmd, index|
  #puts `man #{cmd}`
  puts "#{index + 1}) #{cmd}"  
end
