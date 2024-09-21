class RemoveMuscleGroup < ActiveRecord::Migration[7.2]
  def change
    drop_table :muscle_groups
  end
end
