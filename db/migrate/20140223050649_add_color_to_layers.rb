class AddColorToLayers < ActiveRecord::Migration[5.1]
  def change
    add_column :layers, :color, :string
  end
end
