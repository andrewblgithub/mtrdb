class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :MTID
      t.date :date_of_birth
      t.string :sex
      t.date :date_of_admission
      t.date :date_of_discharge
      t.boolean :expired
      t.string :level_of_education
      t.string :primary_diagnosis
      t.boolean :brain_metastases
      t.boolean :liver_metastases
      t.boolean :hepatic_encephalopathy
      t.boolean :delirium
      t.boolean :dementia
      t.boolean :CAM
      t.boolean :CVA
      t.boolean :nonverbal
      t.boolean :hearing_impaired

      t.timestamps
    end
  end
end
