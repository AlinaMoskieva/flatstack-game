class Round < ActiveRecord::Base
  belongs_to :game
  # validates_length_of :questions, is: 4, message: "round must have 3 questions"
end
