class DeletePoints < ActiveRecord::Migration[5.1]
  def self.up
    drop_table :points
  end

  def self.down
    create_table :points do |t|
      t.string :name
      t.text :description
      t.decimal :latitude, :precision => 15, :scale => 10
      t.decimal :longitude, :precision => 15, :scale => 10
      t.integer  :layer_id
      t.boolean  :is_callbox, :default => false

      t.timestamps
    end
  end
end
