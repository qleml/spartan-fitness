class CreateNormalSets < ActiveRecord::Migration[7.2]
  def change
    create_table :normal_sets do |t|
      t.integer :sets
      t.integer :repetitions

      t.timestamps
    end
  end
end
