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

ActiveRecord::Schema.define(version: 2022_02_17_204824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dogs", force: :cascade do |t|
    t.string "name", null: false
    t.string "favorite_food", default: "cheese"
    t.string "favorite_toy"
    t.date "date_of_birth"
    t.bigint "human_id", null: false
    t.index ["human_id"], name: "index_dogs_on_human_id"
  end

  create_table "humans", force: :cascade do |t|
    t.string "name", null: false
    t.string "favorite_food"
    t.string "favorite_color"
    t.date "date_of_birth"
    t.string "city"
  end

  add_foreign_key "dogs", "humans"
end
