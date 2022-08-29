class CreateGoodsProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :goods_new do |t|

      t.timestamps
    end
  end
end
