class Products::BidsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@product = Product.find(params[:product_id])
  end

  def new
  	@product = Product.find(params[:product_id])
  	@bid = current_user.bids.new
  end

  def create
  	@product = Product.find(params[:product_id])
  	@bid = current_user.bids.create(bid_params.merge({product_id: @product.id}))
  	if @bid.save
  		redirect_to product_path(params[:product_id])
  	else
  		render :new
  	end
  end

  private
  def bid_params
  	params.require(:bid).permit(:amount)
  end
end