class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :comments, dependent: :destroy
  has_one_attached :photo

  validates :content, presence: true
end
