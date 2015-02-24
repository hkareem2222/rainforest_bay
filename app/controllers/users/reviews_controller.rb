class Users::ReviewsController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
  	@reviews = @user.reviews
  end

  def new
  	@user = User.find(params[:user_id])
  	@review = current_user.reviews.build
  end

  def create
  	@user = User.find(params[:user_id])
  	@review = current_user.reviews.build(review_params)
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