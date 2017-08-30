#Contact List Refactor#

# save user input into an array
people = []
puts "Hey! whats your name?"
name = gets.strip
puts "Hello, #{name}"
# see what methods are availible
# puts people.methods
while true
  puts """
    1: Add Contact
    2: View Contacts
    3: Edit Contact
    4: Delete Contact
    5: Search Contact
    6: Quit
  """
  user_choice = gets.strip.to_i
  case user_choice
  when 1
    puts 'Who do you want to add?'
    name = gets.strip
    people << name
  when 2
    puts ""
    people.sort.each_with_index do |person, index|
      puts "#{index + 1}) #{person}"
    end
  when 3
    # find the person you want to edit
    puts "Who do you edit?"
    edit_person = gets.strip
    index = people.index(edit_person)
    # ask user for updated name
    puts "Whats the new info?"
    updated_person = gets.strip
    # updated it in the array
    people[index] = updated_person
  when 4
    puts "Who do you want to delete?"
    deleted_person = gets.strip
    people.delete(deleted_person)
  when 5
    puts "Who do you search for?"
    search = gets.strip
    if people.include?(search)
      puts "#{search} is here"
    else
      puts "#{search} could not be found"
    end
  when 6
    exit
  end
end
# do the same thing
# people.push(name)
# people << name
