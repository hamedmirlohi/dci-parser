class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|
      t.references :parsed_file, index: true
      t.string :type
      t.integer :time
      t.integer :padding, null: false, default: 0

      # send message
      t.integer :tms_state
      t.integer :tdi_state
      t.integer :tdo_state
      t.integer :trigger_state

      # send setting
      t.integer :null_set_off0
      t.integer :arb_req_set_off1
      t.integer :access_control_set_off6
      t.integer :access_control_set_off7
      t.integer :access_control_set_off8
      t.integer :access_control_set_off9
      t.integer :pmc_handshake_ack_set_off10
      t.integer :pmc_handshake_en_set_off10
      t.integer :outband_padding_set_off10
      t.integer :outband_packing_set_off10

      # receive status
      t.integer :arb_req_reg
      t.integer :arb_grant_reg
      t.integer :fuse_trap_enable

      t.timestamps
    end
  end
end
