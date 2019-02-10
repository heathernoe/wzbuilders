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

ActiveRecord::Schema.define(version: 20180501190627) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.string "location_url"
    t.date "start_date"
    t.time "start_time"
    t.date "end_date"
    t.time "end_time"
    t.string "reference_info"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "price"
    t.index ["service_id"], name: "index_courses_on_service_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "description"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "col"
    t.index ["project_id"], name: "index_photos_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "column"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "type"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "service_type"
    t.string "string"
    t.string "icon"
    t.string "image"
  end

  create_table "signups", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
