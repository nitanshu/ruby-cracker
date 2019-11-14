moving_commands = gets.chomp
@x = 0
@y = 0

def move_pointer_in_2d(moving_commands)
  moving_commands.each_char do |command|
    move(command)
  end
end

def move(command)
  case command
  when "L"
    @x -= 1
  when "R"
    @x += 1
  when "U"
    @y += 1
  when "D"
    @y -= 1
  end
end
move_pointer_in_2d(moving_commands)
puts "#{@x} #{@y}"