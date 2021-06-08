class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.string :author
      t.string :language
      t.float :rating

      t.timestamps
    end
  end
end
