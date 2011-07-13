class AddIsPublicToLayers < ActiveRecord::Migration
  def self.up
    add_column :layers, :is_public, :boolean
  end

  def self.down
    remove_column :layers, :is_public
  end
end
