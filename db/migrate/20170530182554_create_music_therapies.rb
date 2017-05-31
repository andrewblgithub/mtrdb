class CreateMusicTherapies < ActiveRecord::Migration[5.1]
  def change
    create_table :music_therapies do |t|
      t.date :date
      t.string :passive_or_active
      t.integer :length_of_visit
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
