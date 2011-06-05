class AddAproximateToCallBoxes < ActiveRecord::Migration
  def self.up
    add_column :call_boxes, :aproximate, :bool
  end

  def self.down
    remove_column :call_boxes, :aproximate, :bool
  end
end
