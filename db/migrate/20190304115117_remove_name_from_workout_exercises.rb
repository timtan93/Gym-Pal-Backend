class RemoveNameFromWorkoutExercises < ActiveRecord::Migration[5.2]
    def change
      remove_column :workout_exercises, :name
    end
  end
  
