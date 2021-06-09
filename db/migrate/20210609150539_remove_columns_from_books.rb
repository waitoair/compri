class RemoveColumnsFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :rating, :float
    remove_column :books, :description, :text
  end
end
