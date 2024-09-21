class AddExerciseTypeIdToExercises < ActiveRecord::Migration[7.2]
  def change
    add_column :exercises, :exercise_type_id, :integer
  end
end
