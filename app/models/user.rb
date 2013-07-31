class User < ActiveRecord::Base
  attr_accessible :password_confirmation, :email, :name, :password, :username

  acts_as_authentic
end
