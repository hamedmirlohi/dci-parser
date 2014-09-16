class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
      t.references :parsed_file, index: true
      t.string :type
      t.integer :time
      t.boolean :extended_header, null: false, default: false

      # send message
      t.integer :tms_state, limit: 8
      t.integer :tdi_state, limit: 8
      t.integer :tdo_state, limit: 8
      t.integer :trigger_state, limit: 8

      # send setting
      t.integer :null_set_off0, limit: 8
      t.integer :arb_req_set_off1, limit: 8
      t.integer :access_control_set_off6, limit: 8
      t.integer :access_control_set_off7, limit: 8
      t.integer :access_control_set_off8, limit: 8
      t.integer :access_control_set_off9, limit: 8
      t.integer :pmc_handshake_ack_set_off10, limit: 8
      t.integer :pmc_handshake_en_set_off10, limit: 8
      t.integer :outband_padding_set_off10, limit: 8
      t.integer :outband_packing_set_off10, limit: 8

      # receive status
      t.integer :arb_req_reg, limit: 8
      t.integer :arb_grant_reg, limit: 8
      t.integer :fuse_trap_enable, limit: 8

      t.timestamps
    end
  end
end
