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

ActiveRecord::Schema.define(version: 20140916004445) do

  create_table "packets", force: true do |t|
    t.integer  "parsed_file_id"
    t.integer  "index"
    t.integer  "payload",        limit: 8
    t.string   "type"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "packets", ["parsed_file_id"], name: "index_packets_on_parsed_file_id"

  create_table "parsed_files", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
