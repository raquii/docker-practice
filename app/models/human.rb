require_relative '../modules/favorite_food'
class Human < ActiveRecord::Base
    include FavoriteFood
    
    has_many :dogs

    validates :name, presence: true
end