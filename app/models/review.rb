class Review < ActiveRecord::Base

	acts_as_votable

	belongs_to :user

	validates :description, :rating, :presence => true

end
