class AddAproximateToCallBoxes < ActiveRecord::Migration
  def self.up
    add_column :call_boxes, :aproximate, :boolean
  end

  def self.down
    remove_column :call_boxes, :aproximate, :boolean
  end
end
