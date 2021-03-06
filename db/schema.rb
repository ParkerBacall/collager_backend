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

ActiveRecord::Schema.define(version: 2020_01_21_225007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "canva_images", force: :cascade do |t|
    t.bigint "canva_id", null: false
    t.bigint "image_id", null: false
    t.string "size"
    t.string "position"
    t.string "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["canva_id"], name: "index_canva_images_on_canva_id"
    t.index ["image_id"], name: "index_canva_images_on_image_id"
  end

  create_table "canvas", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_canvas_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "sourceImage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "canva_images", "canvas"
  add_foreign_key "canva_images", "images"
  add_foreign_key "canvas", "users"
end
