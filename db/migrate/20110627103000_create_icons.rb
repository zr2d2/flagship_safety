class CreateIcons < ActiveRecord::Migration[5.1]
  def self.up
    create_table :icons do |t|
      t.string :name
      t.references :user
      t.string :image_file_name
      t.string :image_content_type
      t.string :image_file_size
      t.string :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :icons
  end
end
