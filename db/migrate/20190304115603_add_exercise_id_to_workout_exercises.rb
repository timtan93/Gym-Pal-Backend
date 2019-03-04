class AddExerciseIdToWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_exercises, :exercise_id, :integer
  end
end
