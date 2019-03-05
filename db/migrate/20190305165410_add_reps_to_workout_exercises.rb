class AddRepsToWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_exercises, :reps, :integer
  end
end
