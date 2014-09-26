class User < ActiveRecord::Base
	#has_secure_password

	
	validates_uniqueness_of :email, :password
	
  #format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	#uniqueness: true
end
