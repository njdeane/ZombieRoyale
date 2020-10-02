require 'colorize'
require 'tty-box'
require 'tty-link'
require_relative "classes.rb"
require_relative "banners.rb"


def pause
    puts "\nPress [enter] to continue"
    gets 
end

def welcome
    puts "Welcome to..." 
        sleep 1.0
        system("clear")
        puts banner
        sleep 1.0
        system("clear")
    puts "As you are aware the zombie apocalypse has happened...\n" 
        sleep 1.0
    puts "It was fortold in countless TV shows, movies and folklore...\n"
        sleep 1.0
    puts "Here you will contend for a vaccine so you may walk the earth,\nImmune to the zombie virus..."
        sleep 1.0
    puts "Do you have what it takes?".colorize(:red)
    pause
end

def create_contestant
    system("clear")
    puts "Contestant, what is your name?"
        @name = gets.chomp 
    system("clear")
end

def menu
    loop do
        banner
        puts "Welcome to the menu #{@name.colorize(:red)}, here you will navigate throughout your journey to score the prized vaccine.\n
        Contestant #{@name.colorize(:red)} you may enter:\n 
        (a) Quiz: 
        (b) Body Parts Shop:
        (c) Zombie Royale:
        (d) Instructions:\n"
        puts TTY::Link.link_to("For more work by the author visit", "https://github.com/njdeane")
        input = gets.chomp
        if input == "a"
            require_relative "quiz.rb"
            zombie_quiz(questions)
        elsif input == "b"
            body_part_shop
        elsif input == "c"
            zombie_royale
        elsif
            input == "d"
            instructions
        else
            system("clear")
            puts "Invalid input, you will be redirected to Instructions for tutelage:".colorize(:red)
            sleep 1.0
            instructions
        end
    end
end

def zombie_quiz(questions)
    system("clear")
    print TTY::Box.frame "Quiz:"
    puts "Contestant #{@name} welcome to the quiz: here you compete for points to spend in the Body Part Shop.".colorize(:red)
    pause
    system("clear")
    @points = 0 
    for question in questions
        print TTY::Box.frame "Quiz:"
        puts question.prompt
        answer = gets.chomp
        if answer == question.answer
            @points +=1
        end
        system("clear")
    end
    puts "Well done contestant #{@name} you have recieved #{@points} points:"
        sleep 1.0
        system("clear")
    menu
end

def body_part_shop
    @strength = 0
    system("clear")
    print TTY::Box.frame "Body Part Shop:"
    puts "Contestant #{@name} welcome to the Body Part Shop. You have #{@points} points:\n 
here you will spend your points to purchase body parts to feed and strengthen your zombie.\n
The more you feed your zombie the stronger it will become for the battle known as Zombie Royale...\n
Totally not a rip of 'Battle Royale' by the way, nope not at all."
    pause
    system("clear")
    banner2
    print TTY::Box.frame "Body Part Shop:"
    puts "You have now aquired a zombie what would you like to name him/her...it?\n
    please enter a name and press [enter]:"
    @zombie = gets.chomp
    pause
    system("clear")
    while @points > 0 
        print TTY::Box.frame "Body Part Shop:"
        puts "Contestant #{@name} you have #{@points} points remaining."
        puts "Your zombie #{@zombie} has a strength value of #{@strength}.\n
            Redeem your points for your desired body part:\n
            (a) Head:
                Cost: 5 points
                Zombie strength + 10\n
            (b) Torso:
                Cost: 3 points
                Zombie strength + 5\n
            (c) Arm:
                Cost: 2 points
                Zombie strength + 3\n
            (d) Hand:
                Cost: 1 point
                Zombie strength + 1\n
                Points:   = #{@points}
                Strength: = #{@strength}"
        input = gets.chomp
        if input == "a"
            @points -= 5
            @strength += 10
            system("clear")
        elsif input == "b"
            @points -= 3
            @strength += 5
            system("clear")
        elsif input == "c"
            @points -= 2
            @strength += 3
            system("clear")
        else input == "d"
            @points -= 1
            @strength += 1
            system("clear")
        end
    end
end

def zombie_royale
    system("clear")
    print TTY::Box.frame "Zombie Royale:"
    puts "Contestant #{@name.colorize(:red)} welcome to Zombie Royale here you and your warrior zombie #{@zombie} will compete for the vaccine."
        sleep 1.5
    print TTY::Box.frame "Your Zombie has a strength rating of #{@strength}:".colorize(:red)
    # puts "Your Zombie has a strength rating of #{@strength}".colorize(:red)
end

def instructions
    system("clear")
    print TTY::Box.frame "Help:"
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