


puts "Welcome to ZombieRoyale"
puts "Contestant, what is your name?"
    name = gets.chomp
    puts "Welcome to the menu #{name}, here you will navigate throughout your journey to score the prized vaccine"
loop do
        puts "Contestant #{name} you may enter the 
                                Quiz: 
                                Body Parts Shop:
                                ZombieRoyale:"
        input = gets.chomp
        if input == "Quiz"
            puts "Contestant #{name} welcome to the quiz, here you compete for points to spend in the Body Part Shop"
        elsif input == "Body Parts Shop"
            puts "Contestant #{name} welcome to the Body Part Shop, here you will spend your points to purchase body parts 
                    to feed and strengthen your zombie"
        elsif input == "BattleRoyale"
            puts "Contestant #{name} welcome to ZombieRoyale here you will compete for the vaccine"
        else
            puts "invalid input"
        end
    end



    # Need to link the menu user input to sepatate section, currently just infinite loop.
    # Also need to link the name input to a Class User.new