class CreateDailyOpioids < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_opioids do |t|
      t.date :date
      t.integer :order_number
      t.string :type_of_opioid
      t.boolean :PRN
      t.integer :dose
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
