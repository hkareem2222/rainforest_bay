class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :products, dependent: :destroy
   has_many :reviews, as: :reviewable, dependent: :destroy

   has_many :bids, dependent: :destroy

   validates :username, presence: true
   validates :username, uniqueness: true

   acts_as_voter
end
