class RemoveExerciseTypeIdFromExercises < ActiveRecord::Migration[7.2]
  def change
    remove_column :exercises, :exercise_type_id, :integer
  end
end
