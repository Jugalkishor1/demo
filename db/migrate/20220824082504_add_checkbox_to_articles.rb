class AddCheckboxToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :agree, :boolean
  end
end
