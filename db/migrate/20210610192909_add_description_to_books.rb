class AddDescriptionToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :description, :text
  end
end
