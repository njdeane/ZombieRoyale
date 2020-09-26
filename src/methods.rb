def banner
    puts " #######                                  ######                                    " 
    puts "      #   ####  #    # #####  # ######    #     #  ####  #   #   ##   #      ###### " 
    puts "     #   #    # ##  ## #    # # #         #     # #    #  # #   #  #  #      #      " 
    puts "    #    #    # # ## # #####  # #####     ######  #    #   #   #    # #      #####  " 
    puts "   #     #    # #    # #    # # #         #   #   #    #   #   ###### #      #      " 
    puts "  #      #    # #    # #    # # #         #    #  #    #   #   #    # #      #      " 
    puts " #######  ####  #    # #####  # ######    #     #  ####    #   #    # ###### ###### " 
    puts "____________________________________________________________________________________"
    puts ""
end


def welcome
    puts "Welcome to..." 
        sleep 0.5
        system("clear")
        puts banner
        sleep 0.5
        system("clear")
    puts "As you are aware the zombie apocalypse has happened..." 
        sleep 0.5
        system("clear")
    puts "It was fortold in countless TV shows, movies and folklore..."
        sleep 0.5
        system("clear")
    puts "Here you will contend for a vaccine so you may walk the earth,\nImmune to the zombie virus..."
        sleep 0.5
        system("clear")
    puts "Do you have what it takes?"
end

def menu
    loop do
        puts "Contestant, what is your name?"
        name = gets.chomp # how do I store this name in the class User in classes.rb
        system("clear")
        banner
        puts "Welcome to the menu #{name}, here you will navigate throughout your journey to score the prized vaccine."
        puts "Contestant #{name} you may enter:\n 
        (a) Quiz: 
        (b) Body Parts Shop:
        (c) ZombieRoyale:"
        input = gets.chomp
        if input == "a"
            system("clear")
            puts "Contestant #{name} welcome to the quiz, here you compete for points to spend in the Body Part Shop."
            sleep 5.0
            require_relative "quiz.rb"
            zombie_quiz(questions)
        elsif input == "b"
            puts "Contestant #{name} welcome to the Body Part Shop, here you will spend your points to purchase body parts...\nto feed and strengthen your zombie."
        elsif input == "c"
            puts "Contestant #{name} welcome to ZombieRoyale here you will compete for the vaccine."
        else
            puts "invalid input"
        end
    end
end

