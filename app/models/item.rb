class Item < ApplicationRecord
  # Validation (rails method)
  # Run and make sure name is present before it saves to database
  validates :name, presence: true
  validates :price, numericality: true
end
