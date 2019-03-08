class Workout < ApplicationRecord
  has_many :workout_exercises, :dependent => :delete_all
  belongs_to :user
end
