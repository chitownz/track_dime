class Transaction < ApplicationRecord
belongs_to :category
validates :date, :transaction_type, :description, :address, :amount, presence: true  
end
