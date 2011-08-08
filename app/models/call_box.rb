class CallBox < ActiveRecord::Base
  # Relations
  belongs_to :layer
  has_many :cb_test

  default_scope order(:cb_num)

  # Validations
  # validates :longitude, :numericality => true, :inclusion => { :in => -180..180}
  # validates :latitude, :numericality => true, :inclusion => { :in => -90..90}

  include Geometry
 end
