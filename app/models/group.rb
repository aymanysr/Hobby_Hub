class Group < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :posts, dependent: :destroy
  has_one_attached :photo
  has_many :meetings

  def category_name
    category.name
  end

  def city_name
    city.name
  end
end
