class CallBox < ActiveRecord::Base
  # Relations
  belongs_to :layer

  # Validations
  validates :name, :presence => true
  validates :longitude, :numericality => true, :inclusion => { :in => -180..180}
  validates :latitude, :numericality => true, :inclusion => { :in => -90..90}

  include Geometry
 end
