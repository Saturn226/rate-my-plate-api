class User < ApplicationRecord
    has_many :plates
    has_secure_password
    acts_as_voter
    validates :username, presence: true
    validates :username, uniqueness: true
end
