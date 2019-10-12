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

ActiveRecord::Schema.define(version: 2019_10_12_082323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camera_codecs", force: :cascade do |t|
    t.bigint "camera_id", null: false
    t.bigint "codec_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camera_id"], name: "index_camera_codecs_on_camera_id"
    t.index ["codec_id"], name: "index_camera_codecs_on_codec_id"
  end

  create_table "camera_images", force: :cascade do |t|
    t.text "camera_image"
    t.bigint "camera_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camera_id"], name: "index_camera_images_on_camera_id"
  end

  create_table "cameras", force: :cascade do |t|
    t.string "camera_name"
    t.integer "resolution"
    t.integer "camera_type"
    t.integer "audio"
    t.string "size"
    t.integer "weight"
    t.integer "manufacturer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "codecs", force: :cascade do |t|
    t.string "codec"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "camera_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camera_id"], name: "index_favorites_on_camera_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "manufacturer_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.text "report_text"
    t.bigint "camera_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camera_id"], name: "index_reports_on_camera_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "review_text"
    t.text "review_image"
    t.integer "camera_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "mail"
    t.string "password_digest"
    t.string "user_image"
    t.boolean "enable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "camera_codecs", "cameras"
  add_foreign_key "camera_codecs", "codecs"
  add_foreign_key "camera_images", "cameras"
  add_foreign_key "favorites", "cameras"
  add_foreign_key "favorites", "users"
  add_foreign_key "reports", "cameras"
  add_foreign_key "reports", "users"
end
