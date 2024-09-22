class RenameExerciseTypesToExerciseCategories < ActiveRecord::Migration[7.2]
  def change
    rename_table :exercise_types, :exercise_categories
  end
end
