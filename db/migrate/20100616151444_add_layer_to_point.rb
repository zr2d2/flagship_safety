class AddLayerToPoint < ActiveRecord::Migration[5.1]
  def self.up
    add_column :points, :layer_id, :integer
  end

  def self.down
    remove_column :points, :layer_id
  end
end
