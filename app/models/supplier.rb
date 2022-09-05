class Supplier < ApplicationRecord
	has_many :papers
  has_many :editors, through: :papers
end

# rails g migration change_[supplier]_to_[Suppliers]
