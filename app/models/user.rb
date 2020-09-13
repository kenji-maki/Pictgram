class User < ApplicationRecord
    validates :name, presence: true
    validates :name, length: {maximum:15 } 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    
    validates :password, presence: true
    validates :password, length: { in: 8..32 }
    validates :password, format: { with: /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/ }
    

    has_secure_password
end

