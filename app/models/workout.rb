class Workout < ApplicationRecord
  has_many :workout_exercises, dependent: :destroy
  belongs_to :user
end
