class User < ActiveRecord::Base
	has_secure_password

	validates_presence_of :email, :password
  validates_uniqueness_of :email
	#format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	#uniqueness: true
end
