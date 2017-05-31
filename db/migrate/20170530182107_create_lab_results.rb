class CreateLabResults < ActiveRecord::Migration[5.1]
  def change
    create_table :lab_results do |t|
      t.date :date
      t.integer :creatinine
      t.integer :bilirubin
      t.integer :albumin
      t.integer :hematocrit
      t.integer :glucose
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
