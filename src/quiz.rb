class Question
    attr_accessor :prompt, :answer
    def initialize (prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end 

q1 = "Which TV series tells the story of Rick Grimes, who wakes from a coma to discover a world overrun by zombies?\n
(a) The Walking Dead
(b) Pandemic
(c) iZombie
(d) Z Nation"
q2 = "What breed of zombie dog plays a big role in Resident Evil?\n
(a) Rottwiler
(b) Great Dane
(c) German Shepherd
(d) Doberman"
q3 = "Which TV show features zombie real estate agents?\n
(a) The Simpsons
(b) Death Valley
(c) Santa Clarita Diet
(d) The Kardashians"
q4 = "In the TV show Z Nation what is the name of the main character?\n
(a) Merle
(b) Monty
(c) Murphy
(d) Muldoon"
q5 = "How do you kill a zombie?\n
(a)Shoot/stab the brain
(b)Burn it to ashes
(c)Nuclear bomb to the face
(d)All of the above"
q6 = "Released in 2009, what comedy zombie film stars Woody Harrelson as Tallahassee?\n
(a)Shaun of the Dead
(b)Zombies! Zombies! Zombies!
(c)Zombieland
(d)Resident Evil"
q7 = "Which TV show features a substance that calms zombies known as 'Z Weed'?\n
(a)South Park
(b)Z Nation
(c)Bob the Builder
(d)Night of the Walking Dead"
q8 = "Who are the best types of people to pair up with during a zombocalypse?\n
(a)A T-1000 kindly provided to you by Skynet
(b)Dora the Explorer
(c)Eric Cartman
(d)Your pet HedgeHog"
q9 = "According to the 'Zombie Survival Guide' what is the best blunt weapon to carry?\n
(a)A sledgehammer 
(b)A steel crowbar
(c)An aluminium bat
(d)A frying pan"
q10 = "According to the 'Zombie Survival Guide', which of the following is a cheap and effective way to kill multiple zombies at once with fire?\n
(a)Sing a song becuase your voice is pure fire
(b)A Blowtorch
(c)A lighter and can of hairspray
(d)Molotov Cocktails"

questions = [
    Question.new(q1, "a"),
    Question.new(q2, "d"),
    Question.new(q3, "c"),
    Question.new(q4, "c"),
    Question.new(q5, "d"),
    Question.new(q6, "c"),
    Question.new(q7, "b"),
    Question.new(q8, "a"),
    Question.new(q9, "b"),
    Question.new(q10, "d"),
    ]

def zombie_quiz(questions)
    system("clear")
    sleep 0.5
    points = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp
        if answer == question.answer
            points +=1
        end
        system("clear")
    end
    puts ("Well done contestant you have recieved #{points} points")
end

zombie_quiz(questions)

# basic shell for quiz section with some sample questions. maybe need to store the questions externally?