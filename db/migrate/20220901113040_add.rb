class Add < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :price, :text
  end
end
