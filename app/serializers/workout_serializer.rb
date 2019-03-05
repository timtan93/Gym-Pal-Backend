class WorkoutSerializer < ActiveModel::Serializer
  attributes :title, :id, :user_id
  has_many :workout_exercises
  class WorkoutExerciseSerializer < ActiveModel::Serializer
    attributes :name, :sets, :reps, :rest, :order
  end
end