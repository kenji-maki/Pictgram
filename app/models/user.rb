class User < ApplicationRecord
    #定数
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    #バリデーション
    validates :name, presence: true
    validates :name, length: {maximum:15 } 
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
    validates :password, presence: true
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/ }
    
    #外部装備
    has_secure_password
    
    #リレーション
    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: :favorites, source: 'topic'
end

