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

ActiveRecord::Schema.define(version: 2019_06_05_173316) do

  create_table "disciplines", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formuls", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scientists", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "theme_id"
    t.index ["theme_id"], name: "index_tasks_on_theme_id"
  end

  create_table "theme_section_formuls", force: :cascade do |t|
    t.integer "theme_section_id"
    t.integer "formul_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formul_id"], name: "index_theme_section_formuls_on_formul_id"
    t.index ["theme_section_id"], name: "index_theme_section_formuls_on_theme_section_id"
  end

  create_table "theme_section_theorems", force: :cascade do |t|
    t.integer "theme_section_id"
    t.integer "theorem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_section_id"], name: "index_theme_section_theorems_on_theme_section_id"
    t.index ["theorem_id"], name: "index_theme_section_theorems_on_theorem_id"
  end

  create_table "theme_sections", force: :cascade do |t|
    t.string "title"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "theme_id"
    t.index ["theme_id"], name: "index_theme_sections_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "discipline_id"
    t.index ["discipline_id"], name: "index_themes_on_discipline_id"
  end

  create_table "theorems", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
