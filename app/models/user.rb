class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_password
  has_many :bookmarks

	validates_presence_of :email, :password
  validates_uniqueness_of :email

	
  #format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	#uniqueness: true
end
