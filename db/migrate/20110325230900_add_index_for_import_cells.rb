class AddIndexForImportCells < ActiveRecord::Migration[5.1]
  def self.up
    add_index :import_cells, [:import_table_id]
  end

  def self.down
    remove_index :import_cells, :column => [:import_table_id]
  end
end
