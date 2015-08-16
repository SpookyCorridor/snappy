class User < ActiveRecord::Base
	has_many :galleries 
	has_secure_password
end
