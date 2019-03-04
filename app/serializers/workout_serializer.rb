class WorkoutSerializer < ActiveModel::Serializer
  attributes :title, :id
  has_many :workout_exercises
  class WorkoutExerciseSerializer < ActiveModel::Serializer
    attributes :id, :name, :workout_id
  end 
end