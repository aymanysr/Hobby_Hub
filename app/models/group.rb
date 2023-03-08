class Group < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
  has_many :users, through: :user_group
  has_many :posts, dependent: :destroy
  has_one_attached :photo
end
