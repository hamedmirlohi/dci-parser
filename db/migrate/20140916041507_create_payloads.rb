class CreatePayloads < ActiveRecord::Migration
  def change
    create_table :payloads do |t|
      t.references :packet
      t.integer :value, limit: 8, null: false
      t.integer :index, null: false

      t.timestamps
    end
  end
end
