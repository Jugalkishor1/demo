class Editor < ApplicationRecord
	has_many :papers, -> { order(title: :desc) }

	Editor.order(:name).to_a


end