class RemoveTimestampsFromWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    remove_column :workout_exercises, :created_at, :string
    remove_column :workout_exercises, :updated_at, :string
  end
end
