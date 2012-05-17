class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :password, :password_confirmation, :username, :quality
  
  has_secure_password
end
