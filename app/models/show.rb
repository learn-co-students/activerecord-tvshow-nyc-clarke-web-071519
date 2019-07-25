class Show < ActiveRecord::Base

#`highest_rating`: this method should return the highest value in the ratings
#column. _hint_: if there is a `minimum` Active Record method, might there be a
#`maximum` method?
def self.highest_rating
    Show.maximum(:rating)
end

# - `most_popular_show`: this method should return the show with the highest
#   rating. _hint_: use the `highest_rating` method as a helper method.
def self.most_popular_show
    num = Show.highest_rating
    Show.find_by(rating: num)
end

# - `lowest_rating`: returns the lowest value in the ratings column.
def self.lowest_rating
    Show.minimum(:rating)
end

# - `least_popular_show`: returns the show with the lowest rating.
def self.least_popular_show
    num = Show.lowest_rating
    Show.find_by(rating: num)
end

# - `ratings_sum`: returns the sum of all of the ratings.
def self.ratings_sum
    Show.sum(:rating)
end

# - `popular_shows`: returns an array of all of the shows that have a rating
#   greater than `5`. _hint_: use the `where` Active Record method.
def self.popular_shows
    Show.where("rating > 5")
end

# - `shows_by_alphabetical_order`: returns an array of all of the shows sorted by
#   alphabetical order according to their names. _hint_: use the `order` Active
#   Record method.
def self.shows_by_alphabetical_order
    Show.order(:name)
end

end