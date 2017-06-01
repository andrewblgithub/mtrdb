class DeidentifyDateInformation < ActiveRecord::Migration[5.1]
  change_table :patients do |p|
    p.remove :date_of_discharge
    p.change :date_of_admission, :integer
    p.rename :date_of_admission, :length_of_stay
    p.change :date_of_birth, :string
    p.rename :date_of_birth, :age
  end
  def change
    change_column :daily_opioids, :date, :integer
    change_column :lab_results, :date, :integer
    change_column :orientations, :date, :integer
    change_column :pain_scores, :date, :integer
    change_column :music_therapies, :date, :integer
    rename_column :daily_opioids, :date, :day
    rename_column :lab_results, :date, :day
    rename_column :orientations, :date, :day
    rename_column :pain_scores, :date, :day
    rename_column :music_therapies, :date, :day
  end
end
