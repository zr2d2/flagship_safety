class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :remember_me, :username

  has_and_belongs_to_many :layers

  ROLES = %w[admin moderator author banned]

end
