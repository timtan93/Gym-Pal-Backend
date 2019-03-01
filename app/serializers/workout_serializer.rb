class WorkoutSerializer < ActiveModel::Serializer
  attributes :title
  has_many :workout_exercises
  class WorkoutExerciseSerializer < ActiveModel::Serializer
    attributes :name
  end 
end