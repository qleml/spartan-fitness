class CreatePyramidSets < ActiveRecord::Migration[7.2]
  def change
    create_table :pyramid_sets do |t|
      t.integer :repetitions

      t.timestamps
    end
  end
end
