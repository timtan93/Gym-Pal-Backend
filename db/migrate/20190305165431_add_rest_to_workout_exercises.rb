class AddRestToWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_exercises, :rest, :integer
  end
end
