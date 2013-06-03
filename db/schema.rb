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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130603184407) do

  create_table "badge_scans", :force => true do |t|
    t.datetime "scan_time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "door_id"
    t.integer  "entrant_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "companies", ["name"], :name => "index_companies_on_name"

  create_table "doors", :force => true do |t|
    t.string   "location",   :default => "Unknown location"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "doors", ["location"], :name => "index_doors_on_location"

  create_table "entrants", :force => true do |t|
    t.string   "first_name",  :default => "Galvanize"
    t.string   "last_name",   :default => "Guest"
    t.boolean  "guest",       :default => false
    t.string   "access_type", :default => "Access permitted - token only"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.integer  "company_id"
  end

  add_index "entrants", ["first_name"], :name => "index_entrants_on_first_name"
  add_index "entrants", ["last_name"], :name => "index_entrants_on_last_name"

end
