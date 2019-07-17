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

ActiveRecord::Schema.define(version: 2019_07_17_065800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.string "semester"
    t.integer "homeroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["homeroom_id"], name: "index_classrooms_on_homeroom_id"
  end

  create_table "classrooms_students", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classrooms_students_on_classroom_id"
    t.index ["student_id"], name: "index_classrooms_students_on_students_id"
  end

  create_table "classrooms_teachers", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_classrooms_teachers_on_classroom_id"
    t.index ["teacher_id"], name: "index_classrooms_teachers_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers_subjects", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "subject_id"
    t.index ["subject_id"], name: "index_teachers_subjects_on_subject_id"
    t.index ["teacher_id"], name: "index_teachers_subjects_on_teacher_id"
  end

  add_foreign_key "classrooms_students", "classrooms"
  add_foreign_key "classrooms_students", "students"
  add_foreign_key "classrooms_teachers", "classrooms"
  add_foreign_key "classrooms_teachers", "teachers"
  add_foreign_key "teachers_subjects", "subjects"
  add_foreign_key "teachers_subjects", "teachers"
end
