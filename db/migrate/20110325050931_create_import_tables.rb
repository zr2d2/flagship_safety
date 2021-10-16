class CreateImportTables < ActiveRecord::Migration[5.1]
  def self.up
    create_table :import_tables do |t|
      t.string :original_path

      t.timestamps
    end
  end

  def self.down
    drop_table :import_tables
  end
end
