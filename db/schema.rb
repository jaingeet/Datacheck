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

ActiveRecord::Schema.define(version: 20151017042924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checks", force: true do |t|
    t.string   "first"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.string   "email_id"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_logs", force: true do |t|
    t.string   "request_id"
    t.string   "customer_id"
    t.string   "customer_name"
    t.string   "contact_number"
    t.string   "service_category"
    t.string   "service_description"
    t.string   "address"
    t.string   "time_allocated"
    t.string   "flag"
    t.string   "assigned_to"
    t.string   "assigned_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "requests", force: true do |t|
    t.string   "customer_id"
    t.string   "customer_name"
    t.string   "contact_number"
    t.string   "service_category"
    t.string   "service_description"
    t.string   "address"
    t.string   "time_allocated"
    t.string   "flag"
    t.string   "assigned_to"
    t.string   "assigned_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicemen", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.string   "email_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
