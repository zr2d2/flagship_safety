class DeleteMigration < ActiveRecord::Migration
  def self.up
    drop_table :callboxs
  end

  def self.down
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
end
