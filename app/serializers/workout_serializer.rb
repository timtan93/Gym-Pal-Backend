class WorkoutSerializer < ActiveModel::Serializer
  attributes :title, :id
  has_many :workoutexercises

end