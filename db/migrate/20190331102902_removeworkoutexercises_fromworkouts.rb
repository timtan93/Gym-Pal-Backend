class RemoveworkoutexercisesFromworkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :workoutexercises
  end
end
