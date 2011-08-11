class CrimeAlert < ActiveRecord::Base
  # Relations
  belongs_to :layer

  # Validations
  validates :longitude, :numericality => true, :inclusion => { :in => -180..180}
  validates :latitude, :numericality => true, :inclusion => { :in => -90..90}

  include Geometry

  # Find a url to the icon for a point, if one exists.
  def icon
    if !layer.icon.nil?
      layer.icon.image.url(:smaller)
    end
  end
 end
