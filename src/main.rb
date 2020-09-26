# This file controls the game.. pulling data from other files.



# this is the welcome to the game and story screens
require_relative "methods.rb"
puts welcome

# need to add the feature that allows spacebar to proceed to menu #

# enter the menu section
puts menu

# enter the quiz feature if "a" is selected
require_relative "quiz.rb"
zombie_quiz(questions)

