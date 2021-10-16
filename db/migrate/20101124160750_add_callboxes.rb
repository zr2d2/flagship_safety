class AddCallboxes < ActiveRecord::Migration[5.1]
  def self.up
    add_column :points, :is_callbox, :boolean, :default => 0

    create_table :callboxs do |t|
      t.integer  :cb_number
      t.datetime  :tested_on
      t.string  :cb_type
      t.boolean  :keypad
      t.boolean  :key_light
      t.boolean  :call_fn
      t.boolean  :DTMF
      t.boolean  :emergency_test
      t.boolean  :blue_light
      t.boolean  :blue_light_flash
      t.boolean  :response
      t.string  :appearance
      t.string  :accessibility
      t.string  :visibility
      t.string  :area_lighting
      t.integer  :visible_cbs
    end
  end

  def self.down
    remove_column :points, :is_callbox
    drop_table :callboxs
  end
end
