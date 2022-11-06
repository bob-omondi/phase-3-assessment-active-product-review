class Reviews < ActiveRecord::Base
    belongs_to :user
    belongs_to :product 

    def print_review
        puts "Review of #{self.product.name} by #{self.user.name}: #{ self.star_rating}. #{self.comment}"
    end
end