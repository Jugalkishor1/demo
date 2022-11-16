class Addcolumn < ActiveRecord::Migration[6.1]
  def change
    add_column :papers, :picture, :binary, :limit => 10.megabyte
  end
end
