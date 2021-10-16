class CreatePaths < ActiveRecord::Migration[5.1]
  def self.up
    create_table :paths do |t|
      t.string :name
      t.text :description
      t.references :layer

      t.timestamps
    end
  end

  def self.down
    drop_table :paths
  end
end
