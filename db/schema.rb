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

ActiveRecord::Schema.define(version: 20160114021539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basements", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "basement_pic_file_name"
    t.string   "basement_pic_content_type"
    t.integer  "basement_pic_file_size"
    t.datetime "basement_pic_updated_at"
    t.text     "basement_tag"
  end

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
  end

  create_table "chlorine_removals", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "chlorine_pic_file_name"
    t.string   "chlorine_pic_content_type"
    t.integer  "chlorine_pic_file_size"
    t.datetime "chlorine_pic_updated_at"
    t.text     "chlorine_tag"
  end

  create_table "crane_services", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "crane_pic_file_name"
    t.string   "crane_pic_content_type"
    t.integer  "crane_pic_file_size"
    t.datetime "crane_pic_updated_at"
    t.text     "crane_service_tag"
  end

  create_table "custom_applications", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "custom_app_pic_file_name"
    t.string   "custom_app_pic_content_type"
    t.integer  "custom_app_pic_file_size"
    t.datetime "custom_app_pic_updated_at"
    t.text     "custom_app_tag"
  end

  create_table "emergency_services", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "emergency_pic_file_name"
    t.string   "emergency_pic_content_type"
    t.integer  "emergency_pic_file_size"
    t.datetime "emergency_pic_updated_at"
    t.text     "es_tag"
  end

  create_table "flood_preventions", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "flood_pic_file_name"
    t.string   "flood_pic_content_type"
    t.integer  "flood_pic_file_size"
    t.datetime "flood_pic_updated_at"
    t.text     "flood_prevention_tag"
  end

  create_table "icemakers", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "icemaker_pic_file_name"
    t.string   "icemaker_pic_content_type"
    t.integer  "icemaker_pic_file_size"
    t.datetime "icemaker_pic_updated_at"
    t.text     "icemaker_tag"
  end

  create_table "irrigation_storages", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "irrigation_storage_pic_file_name"
    t.string   "irrigation_storage_pic_content_type"
    t.integer  "irrigation_storage_pic_file_size"
    t.datetime "irrigation_storage_pic_updated_at"
    t.text     "irrigation_storage_tag"
  end

  create_table "low_yielding_wells", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "low_yield_pic_file_name"
    t.string   "low_yield_pic_content_type"
    t.integer  "low_yield_pic_file_size"
    t.datetime "low_yield_pic_updated_at"
    t.text     "lyw_tag"
  end

  create_table "new_service_lines", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "nsl_pic_file_name"
    t.string   "nsl_pic_content_type"
    t.integer  "nsl_pic_file_size"
    t.datetime "nsl_pic_updated_at"
    t.text     "nsl_tag"
  end

  create_table "pumps_pressure_tanks", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "ppt_pic_file_name"
    t.string   "ppt_pic_content_type"
    t.integer  "ppt_pic_file_size"
    t.datetime "ppt_pic_updated_at"
    t.text     "ppt_tag"
  end

  create_table "pumps_tanks_boosters", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "ptb_pic_file_name"
    t.string   "ptb_pic_content_type"
    t.integer  "ptb_pic_file_size"
    t.datetime "ptb_pic_updated_at"
    t.text     "ptb_tag"
  end

  create_table "repair_conversion_pit_repairs", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "rcpr_pic_file_name"
    t.string   "rcpr_pic_content_type"
    t.integer  "rcpr_pic_file_size"
    t.datetime "rcpr_pic_updated_at"
    t.text     "rcpr_tag"
  end

  create_table "service_repairs", force: :cascade do |t|
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "service_repair_pic_file_name"
    t.string   "service_repair_pic_content_type"
    t.integer  "service_repair_pic_file_size"
    t.datetime "service_repair_pic_updated_at"
    t.text     "service_repair_tag"
  end

  create_table "softners", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "softner_pic_file_name"
    t.string   "softner_pic_content_type"
    t.integer  "softner_pic_file_size"
    t.datetime "softner_pic_updated_at"
    t.text     "softner_tag"
  end

  create_table "trenchings", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "trench_pic_file_name"
    t.string   "trench_pic_content_type"
    t.integer  "trench_pic_file_size"
    t.datetime "trench_pic_updated_at"
    t.text     "trenching_tag"
  end

  create_table "ultrapures", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "ultrapure_pic_file_name"
    t.string   "ultrapure_pic_content_type"
    t.integer  "ultrapure_pic_file_size"
    t.datetime "ultrapure_pic_updated_at"
    t.text     "ultrapure_tag"
  end

  create_table "undersinks", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "undersink_pic_file_name"
    t.string   "undersink_pic_content_type"
    t.integer  "undersink_pic_file_size"
    t.datetime "undersink_pic_updated_at"
    t.text     "undersink_tag"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "water_coolers", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "water_cooler_pic_file_name"
    t.string   "water_cooler_pic_content_type"
    t.integer  "water_cooler_pic_file_size"
    t.datetime "water_cooler_pic_updated_at"
    t.text     "water_cooler_tag"
  end

  create_table "water_testings", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "water_testing_pic_file_name"
    t.string   "water_testing_pic_content_type"
    t.integer  "water_testing_pic_file_size"
    t.datetime "water_testing_pic_updated_at"
    t.text     "water_testing_tag"
  end

  create_table "well_inspections", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "well_inspection_pic_file_name"
    t.string   "well_inspection_pic_content_type"
    t.integer  "well_inspection_pic_file_size"
    t.datetime "well_inspection_pic_updated_at"
    t.text     "well_inspection_tag"
  end

  create_table "whole_houses", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "house_pic_file_name"
    t.string   "house_pic_content_type"
    t.integer  "house_pic_file_size"
    t.datetime "house_pic_updated_at"
    t.text     "whole_house_tag"
  end

end
