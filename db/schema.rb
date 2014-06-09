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

ActiveRecord::Schema.define(version: 20140223173414) do

  create_table "call_boxes", force: true do |t|
    t.integer  "cb_num"
    t.string   "cb_type"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.text     "notes"
    t.integer  "layer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "aproximate"
  end

  create_table "cb_tests", force: true do |t|
    t.integer  "cb_number"
    t.datetime "tested_on"
    t.boolean  "keypad"
    t.boolean  "key_light"
    t.boolean  "call_fn"
    t.boolean  "DTMF"
    t.boolean  "blue_light"
    t.boolean  "response_test"
    t.boolean  "blue_light_flash"
    t.boolean  "response"
    t.string   "appearance"
    t.string   "accessibility"
    t.string   "visibility"
    t.string   "area_lighting"
    t.integer  "visible_cbs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coords", force: true do |t|
    t.decimal  "latitude",   precision: 15, scale: 10, default: 0.0
    t.decimal  "longitude",  precision: 15, scale: 10, default: 0.0
    t.integer  "position"
    t.string   "line_type"
    t.integer  "line_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crime_alerts", force: true do |t|
    t.text     "body"
    t.datetime "happened"
    t.string   "location"
    t.text     "raw_data"
    t.integer  "raw_id"
    t.boolean  "legitimate"
    t.integer  "type_id"
    t.boolean  "processed"
    t.integer  "latitude",   limit: 10
    t.integer  "longitude",  limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "layer_id"
  end

  create_table "icons", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.string   "image_file_size"
    t.string   "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_public",          default: true
  end

  create_table "import_cells", force: true do |t|
    t.integer  "import_table_id"
    t.integer  "row_index"
    t.integer  "column_index"
    t.string   "contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "import_cells", ["import_table_id"], name: "index_import_cells_on_import_table_id"

  create_table "import_tables", force: true do |t|
    t.string   "original_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "icon_id"
    t.boolean  "is_public"
    t.string   "color"
  end

  create_table "paths", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "layer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polygons", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "layer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password", default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
