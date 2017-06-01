# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170601000506) do

  create_table "daily_opioids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date"
    t.integer "order_number"
    t.string "type_of_opioid"
    t.boolean "PRN"
    t.integer "dose"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_daily_opioids_on_patient_id"
  end

  create_table "lab_results", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date"
    t.integer "creatinine"
    t.integer "bilirubin"
    t.integer "albumin"
    t.integer "hematocrit"
    t.integer "glucose"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_lab_results_on_patient_id"
  end

  create_table "music_therapies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date"
    t.string "passive_or_active"
    t.integer "length_of_visit"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_music_therapies_on_patient_id"
  end

  create_table "orientations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date"
    t.integer "orientation_1"
    t.integer "orientation_2"
    t.integer "orientation_3"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_orientations_on_patient_id"
  end

  create_table "pain_scores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date"
    t.integer "pain_score_1"
    t.integer "pain_score_2"
    t.integer "pain_score_3"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_pain_scores_on_patient_id"
  end

  create_table "patients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "mtid"
    t.date "date_of_birth"
    t.string "sex"
    t.date "date_of_admission"
    t.date "date_of_discharge"
    t.boolean "expired"
    t.string "level_of_education"
    t.string "primary_diagnosis"
    t.boolean "brain_metastases"
    t.boolean "liver_metastases"
    t.boolean "hepatic_encephalopathy"
    t.boolean "delirium"
    t.boolean "dementia"
    t.boolean "cam"
    t.boolean "cva"
    t.boolean "nonverbal"
    t.boolean "hearing_impaired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "daily_opioids", "patients"
  add_foreign_key "lab_results", "patients"
  add_foreign_key "music_therapies", "patients"
  add_foreign_key "orientations", "patients"
  add_foreign_key "pain_scores", "patients"
end
