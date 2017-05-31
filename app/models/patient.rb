class Patient < ApplicationRecord
  has_many :music_therapies
  has_many :orientations
  has_many :lab_results
  has_many :pain_scores
  has_many :daily_opioids
end
