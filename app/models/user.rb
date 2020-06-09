class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presense: true, 
                    uniquness: { case_sensitive: false }, 
                    length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX}
  validates :username, presense: true, 
                      uniquness: { case_sensitive: false }, 
                      length: { minimum: 3, maximum: 25 }
                      
end