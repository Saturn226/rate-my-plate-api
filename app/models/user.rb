class User < ApplicationRecord
    has_many :plates
    acts_as_voter
end
