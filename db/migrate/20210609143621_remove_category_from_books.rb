class RemoveCategoryFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :category, :string
  end
end
