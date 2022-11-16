class Supplier < ApplicationRecord
	has_many :papers
  has_many :editors, through: :papers
  Supplier.order(:name).to_a

end

# rails g migration change_[supplier]_to_[Suppliers]
