class AddLayerIdToCrimeAlerts < ActiveRecord::Migration
  def self.up
    add_column :crime_alerts, :layer_id, :number
  end

  def self.down
    remove_column :crime_alerts, :layer_id
  end
end
