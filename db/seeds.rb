
10.times do 
  Category.create!(main:Faker::Commerce.department, sub:Faker::Commerce.material, description:Faker::Commerce.product_name)
end



transaction_type_sample =['Expense (+)','Revenue (-)']

15.times do
  Transaction.create!(date: Faker::Date.backward(120), title: Faker::Superhero.name,transaction_type: transaction_type_sample.sample, description: Faker::TheFreshPrinceOfBelAir.quote, address: Faker::Address.street_address, amount: Faker::Number.decimal(2), category_id: rand(1..10))
end

