class City < ApplicationRecord
  has_many :groups, dependent: :destroy
end
