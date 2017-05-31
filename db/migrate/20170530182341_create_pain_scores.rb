class CreatePainScores < ActiveRecord::Migration[5.1]
  def change
    create_table :pain_scores do |t|
      t.date :date
      t.integer :pain_score_1
      t.integer :pain_score_2
      t.integer :pain_score_3
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
