class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.float :price
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
