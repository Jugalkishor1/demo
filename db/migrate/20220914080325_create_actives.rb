class CreateActives < ActiveRecord::Migration[6.1]
  def change
    add_column :actives, :name, :string 
    add_column :actives, :title, :string 
    add_column :actives, :email, :string
  end
end
