class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :workout_exercises, :workouts, on_delete: :cascade
    add_foreign_key :workouts, :users, on_delete: :cascade
  end
end
