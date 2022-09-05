class Editor < ApplicationRecord
	has_many :papers, -> { order(title: :desc) }
end