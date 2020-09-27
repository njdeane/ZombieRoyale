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

def pause
    puts "\nPress [enter] to continue"
    gets 
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
    pause
end

def create_contestant
    system("clear")
    puts "Contestant, what is your name?"
        @name = gets.chomp 
    system("clear")
end

def menu
    require_relative "classes.rb"
    loop do
        banner
        puts "Welcome to the menu #{@name}, here you will navigate throughout your journey to score the prized vaccine.\n
        Contestant #{@name} you may enter:\n 
        (a) Quiz: 
        (b) Body Parts Shop:
        (c) Zombie Royale:"
        input = gets.chomp
        if input == "a"
            require_relative "quiz.rb"
            zombie_quiz(questions)
        elsif input == "b"
            body_part_shop
        elsif input == "c"
            zombie_royale
        else
            puts "invalid input"
        end
    end
end

def zombie_quiz(questions)
    system("clear")
    puts "Contestant #{@name} welcome to the quiz: here you compete for points to spend in the Body Part Shop."
    pause
    system("clear")
    @points = 0 
    for question in questions
        puts question.prompt
        answer = gets.chomp
        if answer == question.answer
            @points +=1
        end
        system("clear")
    end
    puts ("Well done contestant #{@name} you have recieved #{@points} points:")
        sleep 0.5
        system("clear")
    menu
end

def body_part_shop
    system("clear")
    puts puts "Contestant #{@name} welcome to the Body Part Shop. You have #{@points} points:\n 
here you will spend your points to purchase body parts to feed and strengthen your zombie.
The more you feed your zombie the stronger it will become for the battle known as Zombie Royale...
Totally not a rip 'Battle Royale' by the way, nope not at all."
    pause
end

def zombie_royale
    system("clear")
    puts "Contestant #{@name} welcome to Zombie Royale here you will compete for the vaccine."
        sleep 1.0
    puts "Your Zombie has a strength rating of #{@strength}"
end