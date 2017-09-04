#Contact List

contactList = []
puts "Welcome to Contact List"
puts "And who might you be?"
user = gets.strip
puts "Welcome #{user}!"

while true
  puts """Menu:
    1: Add Contacts
    2: View Contact List
    3: Edit Contact
    4: Delete Contact
    5: Search for Contact
    6: Quit 
    Pick a number"""
  input = gets.strip.to_i

case input
  when 1
    puts "Add a name to the list"
    name =gets.strip
    contactList << name
 when 2
    puts ""
    contactList.sort.each_with_index do |person, index|
      puts "#{index + 1}) #{person}"
    end
  when 3
    puts "Who do you edit?"
    edit_person = gets.strip
    index = contactList.index(edit_person)

    puts "Whats the new info?"
    updated_person = gets.strip

    contactList[index] = updated_person
  when 4
    puts "Who do you want to delete?"
    deleted_person = gets.strip
    contactList.delete(deleted_person)
  when 5
    puts "Who do you search for?"
    search = gets.strip
    if contactList.include?(search)
      puts "#{search} is here"
    else
      puts "#{search} could not be found"
    end
  when 6
    exit
  end
end



