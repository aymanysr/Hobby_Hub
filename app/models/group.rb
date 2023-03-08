class Group < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
  has_many :users, through: :user_group
  has_many :posts, dependent: :destroy
  has_one_attached :photo

  def category_name
    category.name
  end

  def city_name
    city.name
  end
end
