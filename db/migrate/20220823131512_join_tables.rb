class JoinTables < ActiveRecord::Migration[6.1]
  def change
    create_join_table :products, :goods
  end
end
