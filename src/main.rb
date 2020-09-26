# this is the welcome to the game and story set up
require_relative "welcome.rb"
puts welcome

# need to add the feature that allows spacebar to proceed to menu #

# enter the menu section
require_relative "menu.rb"
menu

# enter the quiz feature
require_relative "quiz.rb"
zombie_quiz(questions)

# so far the game runs through welcome.rb, then menu (menu is only currently linked to quiz) then quiz. then it returns
# to menu which is great but it repeats the asking of the player name