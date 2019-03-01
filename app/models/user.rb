class User < ApplicationRecord
    has_many :workouts
    has_many :workout_exercises, through: :workouts
end
