class CreateWorkoutExercises < ActiveRecord::Migration[7.2]
  def change
    create_table :workout_exercises do |t|
      t.references :exercise, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.string :set_variation_type
      t.integer :set_variation_id

      t.timestamps
    end
  end
end
