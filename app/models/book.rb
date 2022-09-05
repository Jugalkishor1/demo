class Book < ApplicationRecord
	belongs_to :author, touch: true
end
 # Book.select("name")
 # Book.select("name").group("name")
 # Book.select("id, name,price, sum(price) as total_price").group("name").having("sum(price) > ?", 50)

 # SELECT books.* FROM books LEFT OUTER JOIN authors ON authors.id = books.author_id