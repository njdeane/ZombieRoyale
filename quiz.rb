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

questions = [
    Question.new(q1, "a"),
    Question.new(q2, "d"),
    Question.new(q3, "c")
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