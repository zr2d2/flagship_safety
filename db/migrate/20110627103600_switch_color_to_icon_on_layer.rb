class SwitchColorToIconOnLayer < ActiveRecord::Migration
  def self.up
    remove_column :layers, :color
    add_column :layers, :icon_id, :integer
  end

  def self.down
    remove_column :layers, :icon
    add_column :layers, :color, :string
  end
end
