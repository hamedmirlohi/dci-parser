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
    t.integer  "padding",                     default: 0, null: false
    t.integer  "tms_state"
    t.integer  "tdi_state"
    t.integer  "tdo_state"
    t.integer  "trigger_state"
    t.integer  "null_set_off0"
    t.integer  "arb_req_set_off1"
    t.integer  "access_control_set_off6"
    t.integer  "access_control_set_off7"
    t.integer  "access_control_set_off8"
    t.integer  "access_control_set_off9"
    t.integer  "pmc_handshake_ack_set_off10"
    t.integer  "pmc_handshake_en_set_off10"
    t.integer  "outband_padding_set_off10"
    t.integer  "outband_packing_set_off10"
    t.integer  "arb_req_reg"
    t.integer  "arb_grant_reg"
    t.integer  "fuse_trap_enable"
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
