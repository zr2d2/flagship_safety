class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :trackable

  has_and_belongs_to_many :layers

  ROLES = %w[admin moderator author banned]

end
