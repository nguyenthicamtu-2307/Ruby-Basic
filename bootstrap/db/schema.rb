# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_04_030939) do
  create_table "books", force: :cascade do |t|
    t.string "book_id"
    t.string "book_name"
    t.string "book_author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_id"
    t.string "student_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_books", force: :cascade do |t|
    t.string "Ma_HS"
    t.string "Ten_HS"
    t.string "Lop"
    t.string "Ma_Sach"
    t.string "Ten_Sach"
    t.string "Ten_TacGia"
    t.string "Tu_Sach"
    t.string "So_BM"
    t.datetime "NgayMuon", precision: nil
    t.datetime "NgayTra", precision: nil
    t.integer "So_Ngay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
