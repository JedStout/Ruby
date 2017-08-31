## Contacts List With Methods ##    
        # Methods
        # Variables
        # Loops
        # Conditionals for Error Checking
        # Correct and Consistent Code Indentation

puts "Welcome to Contact List"
puts "And who might you be?"
user = gets.strip
puts "Welcome #{user}!"

def display_menu
  puts "====MAIN MENU===="
  puts "1: Add Contact"
  puts "2: View Contacts"
  puts "3: Edit Contact"
  puts "4: Delete Contact"
  puts "5: Search Contact"
  puts "6: Exit"
  puts "================="
  gets.to_i
end

def menu_options(input)
  contactList = []
  case input
    when 1
      add_contact(contactList)
    when 2
      view_contacts(contactList)
    when 3
      edit_contacts(contactList)
    when 4
      delete_contacts(contactList)
    when 5
      search_contact(contactList)
    when 6
      exit
    else
      puts "Menu options: 1,2,3,4,5,6"
    end
end

def add_contact(contactList)
  puts "Add a name to the list"
  name = gets.strip
  contactList << name
end

def view_contacts(contactList)
  puts ""
  contactList.sort.each_with_index do |person, index|
  puts "#{index + 1}) #{person}"
  end
end

def edit_contacts(contactList)
  puts "Name to edit?"
  edit_person = gets.strip
  index = contactList.index(edit_person)

  puts "New contact info?"
  updated_person = gets.strip

  contactList[index] = updated_person
end

def delete_contacts(contactList)
  puts "Who do you want to delete?"
  deleted_person = gets.strip
  contactList.delete(deleted_person)
end

def search_contact(contactList)
  puts "Who do you search for?"
  search = gets.strip
  if array1.include?(search)
    puts "#{search} is listed"
  else
    puts "#{search} in not a saved contact"
  end
end

while true
  input = display_menu
  menu_options(input)
end
