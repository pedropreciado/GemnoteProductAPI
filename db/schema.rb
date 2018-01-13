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

ActiveRecord::Schema.define(version: 20180113044128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "information", force: :cascade do |t|
    t.string "body"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_information_on_product_id"
  end

  create_table "options", force: :cascade do |t|
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "option_id"
    t.index ["product_id"], name: "index_options_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.integer "category_id"
    t.decimal "pricing", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "option"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.integer "parent_category_id"
    t.integer "child_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_category_id"], name: "index_subcategories_on_child_category_id"
    t.index ["parent_category_id"], name: "index_subcategories_on_parent_category_id"
  end

end
