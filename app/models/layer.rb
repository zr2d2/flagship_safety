class Layer < ActiveRecord::Base
  # Relations
  belongs_to :icon
  has_many :paths
  has_many :polygons
  has_many :call_boxes
  has_many :crime_alerts
  has_and_belongs_to_many :users

  #default_scope { order(:name) }

  # Validations
  validates :name, :presence => true
end
