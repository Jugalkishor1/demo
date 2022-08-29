class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :commentts do |t|
      t.string :content
      t.integer :commented_on_id
      t.string :commented_on_type
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
