# Banner methods and frequently used methods
def banner
    font = TTY::Font.new(:doom)
    puts font.write("Zombie Royale").colorize(:green)
end

def banner2
    font = TTY::Font.new(:DOOM)
    puts font.write("Body Part Shop").colorize(:green)    
end       

# pause method
def pause
    puts "\nPress [enter] to continue"
    gets 
end