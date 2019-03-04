class RemoveOrderFromWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    remove_column :workout_exercises, :order, :integer
  end
end
