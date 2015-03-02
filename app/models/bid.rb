class Bid < ActiveRecord::Base
	belongs_to :product
	belongs_to :user

	validates_presence_of :amount
end
