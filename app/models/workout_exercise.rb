class WorkoutExercise < ApplicationRecord
    belongs_to :workout
    delegate :user, :to => :workout, :allow_nil => true
end
