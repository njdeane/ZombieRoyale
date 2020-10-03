# Banner methods 
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

# Instruction screen & invalid input message
def instructions
    system("clear")
    print TTY::Box.frame "Help:".colorize(:red)
    puts "INSTRUCTIONS:\n".colorize(:red)
    puts "Zombie Royale is a simple text based zombie trivia game.\n
    To navigate the game press the key that preceeds the prompt, for example if you encounter (a) Quiz:
    pressing the 'a' key will take you to the quiz.\n
    The object of the game is to answer as many questions in the quiz correctly in order to earn points.
    After gaining points in the Quiz you will then proceed to the Body Part Shop.\n
    The Body Part Shop is where you purchase body parts using the points you have earned.
    The more points you have earned the more body parts you can feed your zombie, this makes your zombie strong.\n
    Following the prior two stages, you may enter the battle known as Zombie Royale. This is where you 
    battle your zombie against another contestants zombie.\n
    in the hopes of winning the prized vaccine..."
    pause
    system("clear")
    menu
end