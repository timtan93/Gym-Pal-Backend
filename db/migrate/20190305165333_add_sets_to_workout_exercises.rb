class AddSetsToWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_exercises, :sets, :integer
  end
end
