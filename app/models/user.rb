class User < ApplicationRecord
    has_many :workouts, dependent: :destroy
    has_many :workout_exercises, through: :workouts 
end
