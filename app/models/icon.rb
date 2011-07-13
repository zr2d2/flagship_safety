class Icon < ActiveRecord::Base
  belongs_to :user
  has_many :layers, :dependent => :nullify
  has_attached_file :image, :styles => { :original => "250x250>", :small => "50x50>", :smaller => "25x25>"}

  validates :name, :presence => true
  validates_attachment_presence :image
end
