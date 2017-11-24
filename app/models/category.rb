class Category < ApplicationRecord
  has_many :transactions
  validates :category_type, presence: true
end
