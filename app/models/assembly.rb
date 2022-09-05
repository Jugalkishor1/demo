class Assembly < ApplicationRecord
	has_and_belongs_to_many :parts, -> { group 'part_number' }
	# validates :name, presence: true
end
