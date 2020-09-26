def menu
    loop do
        puts "Contestant, what is your name?"
        name = gets.chomp
        system("clear")
        puts "Welcome to the menu #{name}, here you will navigate throughout your journey to score the prized vaccine"
        puts "Contestant #{name} you may enter:\n 
        (a) Quiz: 
        (b) Body Parts Shop:
        (c) ZombieRoyale:"
        input = gets.chomp
        if input == "a"
            system("clear")
            puts "Contestant #{name} welcome to the quiz, here you compete for points to spend in the Body Part Shop"
            require_relative "quiz.rb"
            zombie_quiz(questions)
        elsif input == "b"
            puts "Contestant #{name} welcome to the Body Part Shop, here you will spend your points to purchase body parts...\nto feed and strengthen your zombie"
        elsif input == "c"
            puts "Contestant #{name} welcome to ZombieRoyale here you will compete for the vaccine"
        else
            puts "invalid input"
        end
    end
end



    
    # Also need to link the name input to a Class User.new