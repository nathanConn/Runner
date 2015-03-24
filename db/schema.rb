# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150322181508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: true do |t|
    t.string   "name"
    t.integer  "rating"
    t.boolean  "wireless"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "misc"
  end

  add_index "armors", ["character_id"], name: "index_armors_on_character_id", using: :btree

  create_table "biowares", force: true do |t|
    t.string   "name"
    t.integer  "rating"
    t.string   "notes"
    t.boolean  "wireless"
    t.float    "essence"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "biowares", ["character_id"], name: "index_biowares_on_character_id", using: :btree

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "sex"
    t.integer  "body"
    t.integer  "agility"
    t.integer  "reaction"
    t.integer  "strength"
    t.integer  "willpower"
    t.integer  "logic"
    t.integer  "intuition"
    t.integer  "charisma"
    t.integer  "edge"
    t.float    "essence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gears", force: true do |t|
    t.string   "name"
    t.integer  "rating"
    t.boolean  "wireless"
    t.string   "misc"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gears", ["character_id"], name: "index_gears_on_character_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "value"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["character_id"], name: "index_skills_on_character_id", using: :btree

  create_table "weapons", force: true do |t|
    t.string   "name"
    t.integer  "damage"
    t.boolean  "wireless"
    t.integer  "ammo"
    t.string   "misc"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "weapons", ["character_id"], name: "index_weapons_on_character_id", using: :btree

end
