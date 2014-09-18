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

ActiveRecord::Schema.define(version: 20140916041507) do

  create_table "packets", force: true do |t|
    t.integer  "parsed_file_id"
    t.string   "type"
    t.integer  "time"
    t.boolean  "extended_header",             default: false, null: false
    t.integer  "null",              limit: 8
    t.integer  "arb_req",           limit: 8
    t.integer  "access_control_6",  limit: 8
    t.integer  "access_control_7",  limit: 8
    t.integer  "access_control_8",  limit: 8
    t.integer  "access_control_9",  limit: 8
    t.integer  "pmc_handshake_ack", limit: 8
    t.integer  "pmc_handshake_en",  limit: 8
    t.integer  "outband_padding",   limit: 8
    t.integer  "outband_packing",   limit: 8
    t.integer  "tms_state",         limit: 8
    t.integer  "tdi_state",         limit: 8
    t.integer  "tdo_state",         limit: 8
    t.integer  "trigger_state",     limit: 8
    t.integer  "arb_req_reg",       limit: 8
    t.integer  "arb_grant_reg",     limit: 8
    t.integer  "fuse_trap_enable",  limit: 8
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

  create_table "payloads", force: true do |t|
    t.integer  "packet_id"
    t.integer  "value",      limit: 8, null: false
    t.integer  "index",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
