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

ActiveRecord::Schema[7.0].define(version: 2022_12_04_170928) do
  create_table "buscars", force: :cascade do |t|
    t.string "search_input"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campis", force: :cascade do |t|
    t.string "name"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campis_mapas", force: :cascade do |t|
    t.integer "parent"
    t.integer "child"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diretorios", force: :cascade do |t|
    t.string "name"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diretorios_mapas", force: :cascade do |t|
    t.integer "parent"
    t.integer "child"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "upload_files", force: :cascade do |t|
    t.integer "diretorio"
=======
  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "teacher"
    t.string "campi"
>>>>>>> 572b49d0e5915a43abe49208a7ba4c14c7b351e7
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
