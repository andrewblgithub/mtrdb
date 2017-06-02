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

ActiveRecord::Schema.define(version: 20170602203244) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "daily_opioids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "day"
    t.string "type_of_opioid"
    t.boolean "prn"
    t.integer "dose"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_daily_opioids_on_patient_id"
  end

  create_table "lab_results", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "day"
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
    t.integer "day"
    t.string "passive_or_active"
    t.integer "length_of_visit"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_music_therapies_on_patient_id"
  end

  create_table "orientations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "day"
    t.integer "orientation_1"
    t.integer "orientation_2"
    t.integer "orientation_3"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_orientations_on_patient_id"
  end

  create_table "pain_scores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "day"
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
    t.string "age"
    t.string "sex"
    t.integer "length_of_stay"
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
