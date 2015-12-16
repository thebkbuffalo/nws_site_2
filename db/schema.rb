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

ActiveRecord::Schema.define(version: 20151216215403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
  end

  create_table "crane_services", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "crane_pic_file_name"
    t.string   "crane_pic_content_type"
    t.integer  "crane_pic_file_size"
    t.datetime "crane_pic_updated_at"
  end

  create_table "emergency_services", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "emergency_pic_file_name"
    t.string   "emergency_pic_content_type"
    t.integer  "emergency_pic_file_size"
    t.datetime "emergency_pic_updated_at"
  end

  create_table "new_service_lines", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "nsl_pic_file_name"
    t.string   "nsl_pic_content_type"
    t.integer  "nsl_pic_file_size"
    t.datetime "nsl_pic_updated_at"
  end

  create_table "pumps_pressure_tanks", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "ppt_pic_file_name"
    t.string   "ppt_pic_content_type"
    t.integer  "ppt_pic_file_size"
    t.datetime "ppt_pic_updated_at"
  end

  create_table "pumps_tanks_boosters", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "ptb_pic_file_name"
    t.string   "ptb_pic_content_type"
    t.integer  "ptb_pic_file_size"
    t.datetime "ptb_pic_updated_at"
  end

  create_table "repair_conversion_pit_repairs", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "rcpr_pic_file_name"
    t.string   "rcpr_pic_content_type"
    t.integer  "rcpr_pic_file_size"
    t.datetime "rcpr_pic_updated_at"
  end

  create_table "service_repairs", force: :cascade do |t|
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "service_repair_pic_file_name"
    t.string   "service_repair_pic_content_type"
    t.integer  "service_repair_pic_file_size"
    t.datetime "service_repair_pic_updated_at"
  end

  create_table "trenchings", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "trench_pic_file_name"
    t.string   "trench_pic_content_type"
    t.integer  "trench_pic_file_size"
    t.datetime "trench_pic_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "well_inspections", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "well_inspection_pic_file_name"
    t.string   "well_inspection_pic_content_type"
    t.integer  "well_inspection_pic_file_size"
    t.datetime "well_inspection_pic_updated_at"
  end

end
