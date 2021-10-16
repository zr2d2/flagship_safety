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

ActiveRecord::Schema.define(version: 2014_02_23_050649) do

  create_table "call_boxes", force: :cascade do |t|
    t.integer "cb_num"
    t.string "cb_type"
    t.decimal "latitude"
    t.decimal "longitude"
    t.text "notes"
    t.integer "layer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "aproximate"
  end

  create_table "cb_tests", force: :cascade do |t|
    t.integer "cb_number"
    t.datetime "tested_on"
    t.boolean "keypad"
    t.boolean "key_light"
    t.boolean "call_fn"
    t.boolean "DTMF"
    t.boolean "blue_light"
    t.boolean "response_test"
    t.boolean "blue_light_flash"
    t.boolean "response"
    t.string "appearance"
    t.string "accessibility"
    t.string "visibility"
    t.string "area_lighting"
    t.integer "visible_cbs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coords", force: :cascade do |t|
    t.decimal "latitude", precision: 15, scale: 10, default: "0.0"
    t.decimal "longitude", precision: 15, scale: 10, default: "0.0"
    t.integer "position"
    t.string "line_type"
    t.integer "line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crime_alerts", force: :cascade do |t|
    t.text "body"
    t.datetime "happened"
    t.string "location"
    t.text "raw_data"
    t.integer "raw_id"
    t.boolean "legitimate"
    t.integer "type_id"
    t.boolean "processed"
    t.decimal "latitude", precision: 10
    t.decimal "longitude", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "layer_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "image_file_name"
    t.string "image_content_type"
    t.string "image_file_size"
    t.string "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_public", default: true
    t.index ["user_id"], name: "index_icons_on_user_id"
  end

  create_table "import_cells", force: :cascade do |t|
    t.integer "import_table_id"
    t.integer "row_index"
    t.integer "column_index"
    t.string "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["import_table_id"], name: "index_import_cells_on_import_table_id"
  end

  create_table "import_tables", force: :cascade do |t|
    t.string "original_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "layers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "icon_id"
    t.boolean "is_public"
    t.string "color"
  end

  create_table "paths", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "layer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["layer_id"], name: "index_paths_on_layer_id"
  end

  create_table "polygons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "layer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["layer_id"], name: "index_polygons_on_layer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
