module FavoriteFood
    def say_favorite
        self.favorite_food ? "#{self.name}'s favorite food is #{self.favorite_food}." : "#{self.name} doesn't have a favorite food."
    end
end