class Adds < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :salary  
    end
  end
end
