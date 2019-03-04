class AddOrderToWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_exercises, :order, :integer
  end
end
