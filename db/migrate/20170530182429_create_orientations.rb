class CreateOrientations < ActiveRecord::Migration[5.1]
  def change
    create_table :orientations do |t|
      t.date :date
      t.integer :orientation_1
      t.integer :orientation_2
      t.integer :orientation_3
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
