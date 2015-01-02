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

ActiveRecord::Schema.define(version: 20141223210601) do

  create_table "families", force: true do |t|
    t.string   "family_name"
    t.integer  "location_id"
    t.string   "email"
    t.string   "phone"
    t.integer  "total_balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_rate_histories", force: true do |t|
    t.integer  "lesson_type_id"
    t.datetime "start_date"
    t.datetime "end_time"
    t.integer  "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesson_types", force: true do |t|
    t.string   "description"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "location_id"
    t.integer  "lesson_type_id"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "total_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "description"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "student_id"
    t.integer  "lesson_id"
    t.integer  "amount"
    t.datetime "date"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "student_id"
    t.integer  "family_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.date     "date_started"
    t.date     "date_ended"
    t.string   "email"
    t.string   "phone"
    t.integer  "outstanding_balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "location_id"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
