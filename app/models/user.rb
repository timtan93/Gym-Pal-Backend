class User < ApplicationRecord
    has_many :workouts, :dependent => :delete_all
    has_many :workout_exercises, through: :workouts 

    has_secure_password
    validates :email, presence: true, uniqueness: true
    
end
