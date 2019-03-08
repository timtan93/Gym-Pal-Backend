class RemoveForeignKeys < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :workout_exercises, :workouts
    remove_foreign_key :workouts, :users
  end
end
