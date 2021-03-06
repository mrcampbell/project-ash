# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_12_175217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "item_type_id"
    t.datetime "used_at"
    t.bigint "trainer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "sold_at"
    t.index ["trainer_id"], name: "index_items_on_trainer_id"
  end

  create_table "pokemon_moves", force: :cascade do |t|
    t.integer "move_id"
    t.integer "index"
    t.bigint "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_pokemon_moves_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "breed_id"
    t.bigint "trainer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "in_team?", default: false, null: false
    t.integer "level"
    t.integer "experience"
    t.integer "iv_attack"
    t.integer "iv_defense"
    t.integer "iv_special_attack"
    t.integer "iv_special_defense"
    t.integer "iv_speed"
    t.integer "ev_attack"
    t.integer "ev_defense"
    t.integer "ev_special_attack"
    t.integer "ev_special_defense"
    t.integer "ev_speed"
    t.string "status"
    t.index ["trainer_id"], name: "index_pokemons_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.integer "money", default: 3000, null: false
    t.index ["users_id"], name: "index_trainers_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "trainers"
  add_foreign_key "pokemon_moves", "pokemons"
  add_foreign_key "pokemons", "trainers"
  add_foreign_key "trainers", "users", column: "users_id"
end
