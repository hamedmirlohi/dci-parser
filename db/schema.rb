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
    t.integer  "cltap",             limit: 8
    t.integer  "S0Ix",              limit: 8
    t.integer  "handshake",         limit: 8
    t.integer  "host_port",         limit: 8
    t.integer  "protocol_E",        limit: 8
    t.integer  "discard_bssb",      limit: 8
    t.integer  "discard_IOSF",      limit: 8
    t.integer  "discard_bridge",    limit: 8
    t.integer  "latch_bridge",      limit: 8
    t.integer  "prdy",              limit: 8
    t.integer  "preq",              limit: 8
    t.integer  "tap_ready",         limit: 8
    t.integer  "cpu_pwr_good",      limit: 8
    t.integer  "core_pwrgood",      limit: 8
    t.integer  "low_pow_state",     limit: 8
    t.integer  "system_reset",      limit: 8
    t.integer  "latch_sys_state",   limit: 8
    t.integer  "prep_type",         limit: 8
    t.integer  "boot_type",         limit: 8
    t.integer  "dbc_out",           limit: 8
    t.integer  "dbc_in",            limit: 8
    t.integer  "exi_stat",          limit: 8
    t.integer  "handler_id",        limit: 8
    t.integer  "jtag_muxsel",       limit: 8
    t.integer  "enable_jtag",       limit: 8
    t.integer  "disable_jtag",      limit: 8
    t.integer  "free_run_clk",      limit: 8
    t.integer  "flush",             limit: 8
    t.integer  "force_wb_t_16",     limit: 8
    t.integer  "force_st_t_16",     limit: 8
    t.integer  "force_wb_16",       limit: 8
    t.integer  "force_st_16",       limit: 8
    t.integer  "duty_cycle",        limit: 8
    t.integer  "div_1_2_3_4",       limit: 8
    t.integer  "ten_n_first",       limit: 8
    t.integer  "tdo_recovery",      limit: 8
    t.integer  "jtag_chain",        limit: 8
    t.integer  "clk_src_18",        limit: 8
    t.integer  "scan_trig_0",       limit: 8
    t.integer  "scan_trig_1",       limit: 8
    t.integer  "scan_trig_2",       limit: 8
    t.integer  "scan_trig_3",       limit: 8
    t.integer  "deAssert_trst",     limit: 8
    t.integer  "assert_preq",       limit: 8
    t.integer  "reset_button_21",   limit: 8
    t.integer  "power_button_21",   limit: 8
    t.integer  "prdy_forwarding",   limit: 8
    t.integer  "reset_break_21",    limit: 8
    t.integer  "PWRBRK1_21",        limit: 8
    t.integer  "PWRBRK2_21",        limit: 8
    t.integer  "PWRBRK3_21",        limit: 8
    t.integer  "plat_tap_power",    limit: 8
    t.integer  "cpu_tap_pow",       limit: 8
    t.integer  "SI0x_22",           limit: 8
    t.integer  "m_state_22",        limit: 8
    t.integer  "platfrom_reset",    limit: 8
    t.integer  "cpu_warm_rst_22",   limit: 8
    t.integer  "nc_warm_rst_22",    limit: 8
    t.integer  "soc_warm_rst_22",   limit: 8
    t.integer  "jtag_event_22",     limit: 8
    t.integer  "exi_bridge_22",     limit: 8
    t.integer  "timeout_22",        limit: 8
    t.integer  "prdy_22",           limit: 8
    t.integer  "pkt_cmpl_23",       limit: 8
    t.integer  "plat_tap_row",      limit: 8
    t.integer  "cpu_tap_row",       limit: 8
    t.integer  "SI0x_23",           limit: 8
    t.integer  "m_state_23",        limit: 8
    t.integer  "small_core_rst",    limit: 8
    t.integer  "platform_reset",    limit: 8
    t.integer  "cpu_warm_rst_23",   limit: 8
    t.integer  "nc_warm_rst_23",    limit: 8
    t.integer  "soc_warm_23",       limit: 8
    t.integer  "jtag_evnt_23",      limit: 8
    t.integer  "exi_bridge_23",     limit: 8
    t.integer  "timeout_23",        limit: 8
    t.integer  "prdy_23",           limit: 8
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
