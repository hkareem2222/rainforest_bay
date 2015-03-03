class Users::ReviewsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
  	@user = User.find(params[:user_id])
  	@reviews = @user.reviews
    @positive_rating = 0
    @negative_rating = 0
    @neutral_rating = 0
    @reviews.each do |review|
      if (review.rating == "Positive")
        @positive_rating += 1
      end
      if (review.rating == "Neutral")
        @neutral_rating += 1
      end
      if (review.rating == "Negative")
        @negative_rating += 1
      end
    end
  end

  def new
  	@user = User.find(params[:user_id])
  	@review = current_user.reviews.build
  end

  def create
  	@user = User.find(params[:user_id])
  	@review = @user.reviews.build(review_params.merge({user_id: current_user.id}))
  	if @review.save
  		redirect_to user_reviews_path
  	else
  		render :new
  	end
  end
  
  private
  def review_params
  	params.require(:review).permit(:description, :rating)
  end

end