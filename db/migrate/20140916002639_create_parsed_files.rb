class CreateParsedFiles < ActiveRecord::Migration
  def change
    create_table :parsed_files do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
