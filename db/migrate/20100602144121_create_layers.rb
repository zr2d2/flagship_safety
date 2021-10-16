class CreateLayers < ActiveRecord::Migration[5.1]
  def self.up
    create_table :layers do |t|
      t.string :name
      t.text :description
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :layers
  end
end
