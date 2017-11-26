class Category < ActiveRecord::Base
  has_many :transactions
  validates :main, :sub, :description, presence:true
  # accepts_nested_attributes_for :transactions, allow_destroy: true
end


