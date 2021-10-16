class CreatePoints < ActiveRecord::Migration[5.1]
  def self.up
    create_table :points do |t|
      t.string :name
      t.text :description
      t.decimal :latitude, :precision => 15, :scale => 10
      t.decimal :longitude, :precision => 15, :scale => 10

      t.timestamps
    end
  end

  def self.down
    drop_table :points
  end
end
