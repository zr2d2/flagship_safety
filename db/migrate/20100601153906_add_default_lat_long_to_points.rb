class AddDefaultLatLongToPoints < ActiveRecord::Migration[5.1]
  def self.up
    change_column :points, :latitude, :decimal, :precision => 15, :scale => 10, :default => 0
    change_column :points, :longitude, :decimal, :precision => 15, :scale => 10, :default => 0
  end

  def self.down
    change_column :points, :latitude, :decimal, :precision => 15, :scale => 10
    change_column :points, :longitude, :decimal, :precision => 15, :scale => 10
  end
end
