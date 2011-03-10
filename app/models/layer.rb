class Layer < ActiveRecord::Base
  # Relations
  has_many :paths
  has_many :polygons
  has_many :call_boxes
  has_many :alerts
  
  # Validations
  validates :name, :presence => true
  validates :color, :hex_color => true
end
