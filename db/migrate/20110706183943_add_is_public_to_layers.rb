class AddIsPublicToLayers < ActiveRecord::Migration[5.1]
  def self.up
    add_column :layers, :is_public, :boolean
  end

  def self.down
    remove_column :layers, :is_public
  end
end
