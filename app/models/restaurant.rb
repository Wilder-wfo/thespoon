class Restaurant < ApplicationRecord
  validates :name, :rating, :address, presence: true
end
