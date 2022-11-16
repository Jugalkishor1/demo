class Addcolumnrails < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :subjects, :integer, array: true, default: []
  end
end
