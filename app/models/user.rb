class User < ApplicationRecord
    has_many :workouts, dependent: :destroy
    has_many :workout_exercises, through: :workouts 

    has_secure_password
    validates :email, presence: true, uniqueness: true
    
end
