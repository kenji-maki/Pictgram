class User < ApplicationRecord
    validates :name, presence: true
    validates :name, length: {maximum:15 } 
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    
    validates :password, presence: true
    validates :password, length: { in: 8..32 }
    validates :password, format: { with: /\A(?=.&#042;?[a-z])(?=.&#042;?\d)[a-z\d]+\z/i }
    
    validates :password_confirmation, presence: true
    validates :password_confirmation, confirmation: true
    
    
    has_secure_password
end

