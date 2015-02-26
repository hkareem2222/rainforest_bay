class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :products
   has_many :reviews, as: :reviewable

   has_many :bids

   validates :username, presence: true
   validates :username, uniqueness: true

   acts_as_voter
end
