class User < ApplicationRecord
    has_many :games
    has_many :snippets, through: :games

    has_secure_password
    validates :username, uniqueness: { case_sensitive: true }
    validates :username, length: { minimum: 3, maximum: 15 }
end
