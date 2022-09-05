class Order < ApplicationRecord
	belongs_to :customer
	has_and_belongs_to_many :books, join_table: 'papers_orders'

	enum status: [:shipped, :being_packaged, :complete, :cancelled, :stolen, :akask]

end
# Customer.find_by_sql("SELECT reviews.title, customers.name
 FROM customers INNER JOIN reviews ON customers.id = reviews.customer_id")


paper = Paper.limit(4)

books.each do |book|
  puts book.author.last_name
end

paper = Paper.includes(:author).limit(10)

books.each do |book|
  puts book.author.last_name
end