class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	# @reviews = @user.reviews
  end

  def user_products
  	@user = User.find(params[:id])
  end
end
