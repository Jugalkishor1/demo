class CreateTable < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :order_count
      t.integer :lock_version
      t.timestamps
    end

    create_table :orders do |t|
      t.integer :status
      t.integer :total
      t.references :customer
      t.timestamps
    end

    create_table :papers_orders do |t|
      t.references :order
      t.references :paper
      t.timestamps
    end

    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.references :customer
      t.references :paper
      t.timestamps
    end

    create_table :papers do |t|
      t.string :title
      t.decimal :price
      t.boolean :out_of_print
      t.references :supplier
      t.references :editor
      t.timestamps
    end

    create_table :supplier do |t|
      t.string :name
      t.timestamps
    end

    create_table :editors do |t|
      t.string :name
      t.string :title
      t.timestamps
    end
  end
end