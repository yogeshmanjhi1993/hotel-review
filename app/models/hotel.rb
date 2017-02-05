class Hotel < ActiveRecord::Base

    validate :check_for_rating,  :on => :update
    validate :check_for_review,  :on => :update

    def check_for_rating
    # byebug
      # hotel=Hotel.find(self.id)
      if self.rating>5  or self.rating < 0
        errors.add(:Correct_rating_value!, "Rating is between 0-5")
      end
      
    end

    def check_for_review
      
      if self.review.length<5 or self.review.length>25
        errors.add(:Check_for_review!, "Review should be between 5-25 words")
        
      end

    end


end
