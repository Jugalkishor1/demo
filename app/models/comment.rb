class Comment < ApplicationRecord
	belongs_to :article #, optional: true
	validates :commenter, presence: true
end
