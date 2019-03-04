class AddWorkoutExercisesToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :workoutexercises, :string, array: true, default: []
  end
end
