class User < ActiveRecord::Base
	has_secure_password

	validates :email, :password,
	format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
	uniqueness: true
end
