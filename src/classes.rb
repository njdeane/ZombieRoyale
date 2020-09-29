
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



#   UPDATED USER CLASS:
# class User
#     attr_accessor :name, :points, :strength, :zombie
#     def initialize(args)
#         @name = args[:name] # storing user name
#         @points = args[:points] || 0 # storing user points
#         @strength = args[:strength] || 0 # storing zombie strength status
#         @zombie = args[:zombie] || 0 
#     end
# end

# # # def create_contestant
# #     puts "Contestant, what is your name?"
# #         name = gets.chomp
# #         user = User.new(:name => name, :points => 30) 
# # # end

# # p user
# # p user.strength

# # user.points += 10

# # p user


# # puts "Contestant, what is your name?"
# # name = gets.chomp
# # user = User.new(:name => name) 

# # p user