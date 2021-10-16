class AddIsPublicToIcon < ActiveRecord::Migration[5.1]
  def self.up
    add_column :icons, :is_public, :boolean, :default => true
  end

  def self.down
    remove_column :icons, :is_public
  end
end
