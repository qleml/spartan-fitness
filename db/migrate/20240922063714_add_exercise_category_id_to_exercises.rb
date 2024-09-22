class AddExerciseCategoryIdToExercises < ActiveRecord::Migration[7.2]
  def change
    add_column :exercises, :exercise_category_id, :integer
    add_foreign_key :exercises, :exercise_categories
  end
end
