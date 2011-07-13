class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string :email
      t.string :fullname
      t.string :role
      t.cas_authenticatable
      t.trackable
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
