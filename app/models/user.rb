class User < ActiveRecord::Base
    has_many :hikes
    has_secure_password 
    validates :name, :username, :email_address, :password, presence: true
    validates :username, :email_address, uniqueness: true
end
