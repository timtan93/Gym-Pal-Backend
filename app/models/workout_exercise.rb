class WorkoutExercise < ApplicationRecord
    belongs_to :workout
    belongs_to :user
end
