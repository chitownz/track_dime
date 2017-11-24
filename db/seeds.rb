
10.times do 
  Category.create!(category_type:Faker::Commerce.department)
end



transaction_type_sample =['Expense','Revenue']

200.times do
  Transaction.create!(date: Faker::Time.forward(30, :all), transaction_type: transaction_type_sample.sample, description: Faker::TheFreshPrinceOfBelAir.quote, address: Faker::Address.street_address, amount: Faker::Number.decimal(2), category_id: rand(1..10))
end

