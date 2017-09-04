
class Contacts
  attr_accessor :name, :email, :phone
    def initialize
        puts "What is your name"
            user = gets.strip
        puts "Welcome #{user}!"
        @contactList = [name: 'Jeff', email: 'Json.com', phone: '1921920091']
        menu
    end

    def add_contact
        puts "Name of Contact:"
            name = gets.strip
        puts "Email:"
            email = gets.strip
        puts "Phone number:"
            phone = gets.strip
            @contactList << { name: name, email: email, phone: phone }
        menu
    end

    def display_contacts
        @contactList.each_with_index do |item, index|
            name = item[:name]
            email = item[:email]
            phone = item[:phone]
            puts "#{index + 1}: #{name}, #{email}, (#{phone})"
        end
    end

    def edit_contact
        puts "Type name to edit?"
            edit_person = gets.strip
            index = contactList.index(edit_person)
        
        puts "Whats the new info?"
        puts "New Name:"
            name = gets.strip
        puts "New Email:"
            email = gets.strip
        puts "New phone number:"
            phone = gets.strip
            @contactList << { name: name, email: email, phone: phone }
        
        contactList[index] = updated_person
    end

    def remove_contact
        puts "Who do you want to remove?"
            deleted_person = gets.strip
            contactList.delete(deleted_person)
    end

    def search_contact
        puts "Who do you search for?"
            search = gets.strip
        if contactList.include?(search)
            puts "#{search} is here"
        else
            puts "#{search} could not be found"
        end
    end

  def menu
    puts "Contact List Menu?"
    puts "1. Add Contact"
    puts "2. View Contact List"
    puts "3. Edit Contact"
    puts "4. Remove a Contact"
    puts "5. Search for a Contact"
    puts "6. Quit"
    menu_option(gets.to_i)
  end

  def menu_option(choice)
    case choice
    when 1
        add_contact
    when 2
        display_contacts
    when 3
        edit_contact
    when 4
        remove_contact
    when 5
      search_contact
    when 6
      puts "Thank you, goodbye!"
      exit
    else
      puts "Invalid Choice Try Again"
      menu
    end
    menu
  end
end


app = Contacts.new
Contacts.initialize