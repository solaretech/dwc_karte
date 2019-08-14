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

ActiveRecord::Schema.define(version: 2019_08_14_134158) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentor_counsels", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "staff_id"
    t.datetime "counselled_at"
    t.text "detail"
    t.boolean "is_done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentor_m_ranks", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "m_rank"
    t.datetime "upgraded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentor_s_ranks", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "s_rank"
    t.datetime "upgraded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentor_trainings", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "category_id"
    t.integer "trainer_id"
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.datetime "joined_at"
    t.boolean "is_retired", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_mentors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_mentors_on_reset_password_token", unique: true
  end

  create_table "question_details", force: :cascade do |t|
    t.integer "question_id"
    t.integer "category_id"
    t.integer "mentor_id"
    t.string "topic"
    t.text "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_notes", force: :cascade do |t|
    t.integer "question_detail_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "student_id"
    t.string "image_id"
    t.integer "reaction_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.integer "authority"
    t.boolean "is_retired", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_staffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
  end

  create_table "student_counsels", force: :cascade do |t|
    t.integer "student_id"
    t.integer "staff_id"
    t.integer "type"
    t.datetime "counselled_at"
    t.text "detail"
    t.boolean "is_done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "school_id"
    t.integer "course_id"
    t.string "student_code"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.datetime "start_learning_at"
    t.integer "extension_count", default: 0
    t.boolean "is_cancelled", default: false
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
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

end
