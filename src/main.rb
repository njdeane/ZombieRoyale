# This file controls the gameflow.. pulling data from other files.

require_relative "methods.rb"
require_relative "main_methods.rb"
welcome
create_contestant
menu
require_relative "quiz.rb"
zombie_quiz(questions)