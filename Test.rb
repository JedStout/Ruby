commandList = ['mv'`, 'cp', 'mkdir', 'ls', 'rm']


puts ""
  commandList.sort.each_with_index do |command|
  puts "man #{command}"
  end