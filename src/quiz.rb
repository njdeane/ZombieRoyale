class Question
    attr_accessor :prompt, :answer
    def initialize (prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end 

q1 = "Which TV series tells the story of Rick Grimes, who wakes from a coma to discover a world overrun by zombies?\n(a)The Walking Dead\n(b)Pandemic\n(c)iZombie\n(d)Z Nation"
q2 = "What breed of zombie dog plays a big role in Resident Evil?\n(a)Rottwiler\n(b)Great Dane\n(c)German Shepherd\n(d)Doberman"
q3 = "Which TV show features zombie real estate agents?\n(a)The Simpsons\n(b)Death Valley\n(c)Santa Clarita Diet\n(d)The Kardashians"
q4 = "In the TV show Z Nation what is the name of the main character?\n(a)Merle\n(b)Monty\n(c)Murphy\n(d)Muldoon"
q5 = "How do you kill a zombie?\n(a)Shoot/stab the brain\n(b)Burn it to ashes\n(c)Nuclear bomb to the face\n(d)All of the above"
q6 = "Released in 2009, what comedy zombie film stars Woody Harrelson as Tallahassee?\n(a)Shaun of the Dead\n(b)Zombies! Zombies! Zombies!\n(c)Zombieland\n(d)Resident Evil"
q7 = "Which TV show features a substance that calms zombies known as 'Z Weed'?\n(a)South Park\n(b)Z Nation\n(c)Bob the Builder\n(d)Night of the Walking Dead"
q8 = "Who are the best types of people to pair up with during a zombocalypse?\n(a)A T-1000 kindly provided to you by Skynet\n(b)Dora the Explorer\n(c)Eric Cartman\n(d)Your pet HedgeHog"
q9 = "According to the 'Zombie Survival Guide what is the best blunt weapon to carry?\n(a)A sledgehammer\n(b)A steel crowbar\n(c)An aluminium bat\n(d)A frying pan"
q10 = "According to the “Zombie Survival Guide,” which of the following is a cheap and effective way to kill multiple zombies at once with fire?\n(a)Sing a song becuase your voice is pure fire\n(b)A Blowtorch\n(c)A lighter and can of hairspray\n(d)Molotov Cocktails"



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
    answer = ""
    points = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            points +=1
        end
    end
    puts ("Well done contestant you have recieved #{points} points")
end

zombie_quiz(questions)

# basic shell for quiz section with some sample questions. maybe need to store the questions externally?