class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: true }
    validates :username, length: { minimum: 3, maximum: 15 }
end
