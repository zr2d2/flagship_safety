class UpgradeDevise < ActiveRecord::Migration
  def self.up
    change_column :users, :email, :string, :null => false, :default => ""

    change_table(:users) do |t|
      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Trackable
      t.remove :sign_in_count, :default => 0, :null => false
      t.remove :current_sign_in_at
      t.remove :last_sign_in_at
      t.remove :current_sign_in_ip
      t.remove :last_sign_in_ip

      t.remove :fullname
    end

    add_index :users, :email,                :unique => true
  end

  def self.down

    change_table(:users) do |t|
      t.string :fullname

      ## Database authenticatable
      t.remove :encrypted_password

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
    end

    remove_index  :users, :email
    change_column :users, :email, :string
  end
end
