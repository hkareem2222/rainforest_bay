class Review < ActiveRecord::Base

	belongs_to :user

	# belongs_to :reviewer, :class_name => "User"

	belongs_to :reviewable, polymorphic: true

	validates :description, :rating, :presence => true

end
