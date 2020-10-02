# This file controls the game.. pulling data from other files.

# This is the welcome to the game screen and intial story
require_relative "methods.rb"
welcome #welcome method from methods.rb

# following welcome to the game, create a user with class.User
create_contestant

# enter the menu section and navigate to quiz, body part shop or zombie royale battle
menu

# if "a" is selected enter quiz
require_relative "quiz.rb"
zombie_quiz(questions) # after quiz user is returned to menu

