contactList = ['Jeff', 'kasd', 'Jonny']


puts ""
  contactList.sort.each_with_index do |person, index|
  puts "#{index + 1}) #{person}"
  end