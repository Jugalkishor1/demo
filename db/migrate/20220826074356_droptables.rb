class Droptables < ActiveRecord::Migration[6.1]
  def change
    drop_table :schools
    drop_table :people
    drop_table :new_table_for_mobiles
  end
end
