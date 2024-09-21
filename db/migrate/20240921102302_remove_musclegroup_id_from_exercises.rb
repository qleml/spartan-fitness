class RemoveMusclegroupIdFromExercises < ActiveRecord::Migration[7.2]
  def change
    remove_column :exercises, :musclegroup_id, :integer
  end
end
