class User < ActiveRecord::Base
	has_secure_password	
end







# salt = BCrypt::Engine.generate_salt
# encrypted_password = BCrypt::Engine.hash_secret(password, salt)