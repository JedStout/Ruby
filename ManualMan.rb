### Command Line Manual Helper ####
commandList = ['mv', 'cp', 'mkdir', 'ls', 'rm']

while true
  puts "======================="
  puts "MAIN MENU"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  puts "======================="
  input = gets.strip.to_i

  case input
    when 1
      puts "Select an option to see output"
      selection = commandList.sort.each_with_index do |cmd, index|
        puts "#{index + 1}) #{cmd}"
        # choice(selection)
      end

      # def choice(selection)
      #   if (selection > 0 && selection <= commandList.length)
      #     index = commandList[selection - 1]
      #     puts element
      #     man(cmd)
      #   else
      #     puts 'Invalid selection.  Try again'
      #     cmd_line_menu
      #   end


    when 2
      puts "Type a cmd to search"
      cmd = gets.strip
      man(cmd)

    when 3
      exit
    end

    def man(cmd)
      puts `man #{cmd}`
    end
  
  end

  
  
