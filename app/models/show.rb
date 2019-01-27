class Show < ActiveRecord::Base

    def self.highest_rating
        most_popular_show.rating
      end
    
       def self.most_popular_show
        Show.order("rating DESC").first
      end
    
       def self.lowest_rating
        least_popular_show.rating
      end
    
       def self.least_popular_show
        Show.order("rating").first
      end
    
       def self.ratings_sum
        Show.sum("rating")
      end
    
       def self.popular_shows
        Show.where("rating > 5")
      end
    
       def self.shows_by_alphabetical_order
        Show.order("name")
      end
    end