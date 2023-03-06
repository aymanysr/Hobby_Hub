class Category < ApplicationRecord
  has_many :groups, dependent: :destroy
end
