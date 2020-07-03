class User < ApplicationRecord
    has_many :purchases
    has_many :items
    has_many :histories 
    has_many :favorites
    has_many :messages
    has_many :purchases
end
