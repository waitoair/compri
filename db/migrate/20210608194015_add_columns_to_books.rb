class AddColumnsToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :price, :float 
    add_column :books, :description, :text 
  end
end
