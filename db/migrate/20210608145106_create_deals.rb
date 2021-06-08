class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.string :store
      t.float :price
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
