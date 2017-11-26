class Transaction < ActiveRecord::Base
  belongs_to :category, optional: true
  validates :date, :title, :transaction_type, :description, :address, :amount, presence:true

  # geocoded_by :address
  # after_validation :geocode

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Transaction.create! row.to_hash
    end
  end 

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |transaction|
        csv << transaction.attributes.values_at(*column_names)
      end 
    end
  end

end

