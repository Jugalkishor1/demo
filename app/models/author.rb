class Author < ApplicationRecord
	# has_many :books, dependent: :destroy
	# has_many :books, -> { order("created_at DESC").limit(1) }
	#has_many :books
	# has_many :books, -> { group(id: :desc)}
	#has_many :books, -> { group 'name'}
                      # through: :books

  # has_many :books, -> { order(id: :asc) }
  has_many :books, -> { order(id: :asc) }

end