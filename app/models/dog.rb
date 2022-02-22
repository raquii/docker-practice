require_relative '../modules/favorite_food'
class Dog < ActiveRecord::Base
    include FavoriteFood
    
    belongs_to :human
end