class Group < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :category
end
