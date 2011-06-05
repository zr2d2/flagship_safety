class AddAproximateToCallBoxes < ActiveRecord::Migration
  def self.up
    add_colum :callboxes :aproximate :bool
  end

  def self.down
    remove_colum :callboxes :aproximate :bool
  end
end
