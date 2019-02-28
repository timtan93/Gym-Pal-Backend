class CreateWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_exercises do |t|
      t.string :name
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
