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

ActiveRecord::Schema.define(version: 2018_06_29_124756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "product_id"
    t.integer "amount"
    t.bigint "shoplist_id"
    t.index ["product_id"], name: "index_ingredients_on_product_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "nutritions", force: :cascade do |t|
    t.float "kcal", default: 0.0
    t.float "fat", default: 0.0
    t.float "carbs", default: 0.0
    t.float "sugar", default: 0.0
    t.float "protein", default: 0.0
    t.float "fiber", default: 0.0
    t.float "salt", default: 0.0
    t.integer "resource_id"
    t.string "resource_type"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "unit"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "sort"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
