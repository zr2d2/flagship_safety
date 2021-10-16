class CreateCrimeAlerts < ActiveRecord::Migration[5.1]
  def self.up
    create_table :crime_alerts do |t|
      t.text :body
      t.datetime :happened
      t.string :location
      t.text :raw_data
      t.integer :raw_id
      t.boolean  "legitimate"
      t.integer  "type_id"
      t.boolean  "processed"
      t.decimal  "latitude",   :limit => 10, :precision => 10, :scale => 0
      t.decimal  "longitude",  :limit => 10, :precision => 10, :scale => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :crime_alerts
  end
end
