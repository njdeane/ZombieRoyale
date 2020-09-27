
class User
    attr_accessor :name, :points, :strength, :zombie
    def initialize(name, points, strength, zombie)
        @name = name # storing user name
        @points = 0 # storing user points
        @strength = 0 # storing zombie strength status
        @zombie = zombie
    end
end

class Question
    attr_accessor :prompt, :answer
    def initialize (prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end 

