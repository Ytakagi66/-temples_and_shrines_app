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

ActiveRecord::Schema.define(version: 2020_03_01_091951) do

  create_table "shrine_word_of_mouths", force: :cascade do |t|
    t.string "name"
    t.string "article"
    t.string "photo"
    t.string "user_id"
    t.string "shrine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shrines", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "nearest_station"
    t.string "url"
    t.string "photo"
    t.string "location"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temple_word_of_mouths", force: :cascade do |t|
    t.string "name"
    t.string "article"
    t.string "photo"
    t.string "user_id"
    t.string "temple_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "temples", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "nearest_station"
    t.string "url"
    t.string "photo"
    t.string "location"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_ids", force: :cascade do |t|
    t.string "name"
    t.string "old"
    t.string "email"
    t.integer "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
