class AddNameToWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_exercises, :name, :string
  end
end
