class User < ActiveRecord::Base

	# Validations
	validates :username, :email, :presence => true
end
