class CreateReels < ActiveRecord::Migration[6.1]
  def change
    create_table :reels do |t|

      t.timestamps
    end
  end
end
