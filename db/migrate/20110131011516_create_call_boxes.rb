class CreateCallBoxes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :call_boxes do |t|
      t.integer :cb_num
      t.string :cb_type
      t.decimal :latitude
      t.decimal :longitude
      t.text :notes
      t.integer :layer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :call_boxes
  end
end
