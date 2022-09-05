class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lock_version, :integer
  end
end
