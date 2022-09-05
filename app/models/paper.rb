class Paper < ApplicationRecord
  belongs_to :supplier
  belongs_to :editor
  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'papers_orders'

  scope :out_of_print, -> { where(out_of_print: true) }
end
