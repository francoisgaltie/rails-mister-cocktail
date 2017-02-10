class ReviewsController < ApplicationController
  def new
     # we need @restaurant in our `simple_form_for`
     @cocktail = Cocktail.find(params[:cocktail_id])
     @review = Review.new
   end

   def create
     @review = Review.new(review_params)
     @review.cocktail = Cocktail.find(params[:cocktail_id])
     @review.save

     redirect_to cocktails_path
   end

   private

   def review_params
     params.require(:review).permit(:comment, :stars)
   end
end
