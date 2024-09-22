class CreateExerciseCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :exercise_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
